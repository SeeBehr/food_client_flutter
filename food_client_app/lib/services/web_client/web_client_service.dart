import 'dart:convert';
import 'dart:core';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class WebClientServiceAggregator
    implements
        HomeWebClientService,
        SingleRecipeWebClientService,
        IngredientsSortingWebClientService {}

const String hasuraSecretHeader =
    '479mMb5g4g5zESHV2Xp2xGEixaD0X7YdeOFMFdRcz0ADeRrRrW0nc1mQbb1haeE5';

class WebClientService implements WebClientServiceAggregator {
  final GraphQLClient _client;

  WebClientService()
      : _client = GraphQLClient(
          defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.networkOnly),
          ),
          cache: GraphQLCache(),
          link: HttpLink(
            'https://super-chigger-54.hasura.app/v1/graphql',
            defaultHeaders: <String, String>{
              'x-hasura-admin-secret': hasuraSecretHeader
            },
          ),
        );

  @override
  TaskEither<Exception, HomeWebClientModelRecipeResponse> fetchRecipes({
    required final String country,
    required final int take,
    required final int skip,
    final Option<List<String>> tagIds = const None<List<String>>(),
    final Option<String> cuisine = const None<String>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      TaskEither<Exception, QueryResult<Query$Recipes>>.tryCatch(
        () async => await _client.query(
          QueryOptions<Query$Recipes>(
            parserFn: Query$Recipes.fromJson,
            document: documentNodeQueryRecipes,
            variables: <String, Object>{
              'country': country,
              'offset': skip,
              'limit': take,
            },
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch recipes: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$Recipes> response) =>
            optionOf(response.parsedData)
                .map(
                  (final Query$Recipes parsedData) =>
                      HomeWebClientModelRecipeResponse(
                    pagination: mapToHomeWebClientModelRecipePagination(
                      skip: skip,
                      take: take,
                      parsedData: parsedData,
                    ),
                    recipes: _mapToHomeWebClientModelRecipe(
                      recipesResponse: parsedData.recipes,
                      country: country,
                    ),
                  ),
                )
                .toEither(
                  () => Exception('Failed to fetch recipes: $response'),
                )
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, QueryResult<Query$GetTags>>.tryCatch(
        () async => await _client.query(
          QueryOptions<Query$GetTags>(
            parserFn: Query$GetTags.fromJson,
            document: documentNodeQueryGetTags,
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch tags: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$GetTags> response) =>
            optionOf(response.parsedData)
                .map(
                  (final Query$GetTags parsedData) =>
                      parsedData.tags.map(mapToHomeWebClientModelTag).toList(),
                )
                .toEither(() => Exception('No parsed data for tags: $response'))
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, QueryResult<Query$SingleRecipe>>.tryCatch(
        () async => await _client.query(
          QueryOptions<Query$SingleRecipe>(
            parserFn: Query$SingleRecipe.fromJson,
            document: documentNodeQuerySingleRecipe,
            variables: <String, Object>{'id': recipeId},
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch single recipe: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$SingleRecipe> response) =>
            optionOf(response.parsedData)
                .map(
                  (final Query$SingleRecipe parsedData) =>
                      _mapToSingleRecipeWebClientModelRecipe(
                    recipe: parsedData.recipes_by_pk!,
                  ),
                )
                .toEither(() => Exception('Failed to fetch recipes: $response'))
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelCuisine>> fetchAllCuisines({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, QueryResult<Query$GetCuisines>>.tryCatch(
        () async => await _client.query(
          QueryOptions<Query$GetCuisines>(
            parserFn: Query$GetCuisines.fromJson,
            document: documentNodeQueryGetCuisines,
          ),
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch cuisines: $error',
        ),
      ).flatMap(
        (final QueryResult<Query$GetCuisines> response) => optionOf(
          response.parsedData,
        )
            .map(
              (final Query$GetCuisines parsedData) => parsedData.cuisines
                  .map(mapToHomeWebClientModelCuisine)
                  .toList(),
            )
            .toEither(() => Exception('No parsed data for cuisines: $response'))
            .toTaskEither(),
      );

  @override
  TaskEither<Exception, List<IngredientsSortingWebClientModelIngredientFamily>>
      fetchAllIngredientFamilies({
    required final String country,
    final Option<int> take = const None<int>(),
    final Option<int> skip = const None<int>(),
  }) =>
          TaskEither<Exception,
              QueryResult<Query$GetIngredientFamilies>>.tryCatch(
            () async => await _client.query(
              QueryOptions<Query$GetIngredientFamilies>(
                parserFn: Query$GetIngredientFamilies.fromJson,
                document: documentNodeQueryGetIngredientFamilies,
              ),
            ),
            (final Object error, final StackTrace stacktrace) => Exception(
              'Failed to fetch ingredients: $error, $stacktrace',
            ),
          ).flatMap(mapIngredientsFamiliesResponse);
}

TaskEither<Exception, List<IngredientsSortingWebClientModelIngredientFamily>>
    mapIngredientsFamiliesResponse(
  final QueryResult<Query$GetIngredientFamilies> response,
) =>
        optionOf(response.parsedData)
            .map(
              (final Query$GetIngredientFamilies families) =>
                  families.ingredient_family
                      .map(
                        (
                          final Query$GetIngredientFamilies$ingredient_family
                              ingredient,
                        ) =>
                            optionOf(ingredient)
                                .map(
                                  mapToIngredientsSortingWebClientModelIngredientFamily,
                                )
                                .toNullable(),
                      )
                      .whereNotNull()
                      .toList(),
            )
            .toEither(
              () => Exception('No parsed data for ingredients: $response'),
            )
            .toTaskEither();

SingleRecipeWebClientModelRecipe _mapToSingleRecipeWebClientModelRecipe({
  required final Query$SingleRecipe$recipes_by_pk recipe,
}) =>
    SingleRecipeWebClientModelRecipe(
      id: recipe.id,
      displayedAttributes:
          mapToSingleRecipeWebClientModelDisplayedAttributes(recipe),
      difficulty: recipe.difficulty,
      yields: mapRecipeYields2(
        yieldsJson: recipe.yields_json,
        ingredients: recipe.bridge_recipes_ingredients
            .map(
              (
                final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients
                    ingredients,
              ) =>
                  optionOf(ingredients.ingredients)
                      .map(mapToWebClientModelIngredient)
                      .toNullable(),
            )
            .whereNotNull()
            .toList(),
      ),
      tags: mapBridgeRecipeTags(bridgeRecipesTags: recipe.bridge_recipes_tags),
      imagePath: optionOf(recipe.imagePath).map(Uri.parse),
      steps: optionOf(recipe.steps)
          .flatMap(
            (final String stepsJson) =>
                Option<List<WebClientModelStep>>.tryCatch(
              () => (jsonDecode(stepsJson) as List<Map<String, Object?>>)
                  .map(WebClientModelStep.fromJson)
                  .toList(),
            ),
          )
          .map(
            (final List<WebClientModelStep> steps) =>
                steps.map(mapToSingleRecipeWebClientModelStep).toList(),
          )
          .getOrElse(() => <SingleRecipeWebClientModelStep>[]),
    );

List<SingleRecipeWebClientModelTag> mapBridgeRecipeTags({
  required final List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>
      bridgeRecipesTags,
}) =>
    bridgeRecipesTags
        .map(
          (final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags tags) =>
              optionOf(tags.tags)
                  .map(mapToSingleRecipeWebClientModelTag)
                  .toNullable(),
        )
        .whereNotNull()
        .toList();

List<HomeWebClientModelRecipe> _mapToHomeWebClientModelRecipe({
  required final List<Query$Recipes$recipes> recipesResponse,
  required final String country,
}) =>
    recipesResponse
        .map(
          (final Query$Recipes$recipes recipe) => HomeWebClientModelRecipe(
            id: recipe.id,
            displayedAttributes:
                mapToHomeWebClientModelDisplayedAttributes(recipe),
            difficulty: recipe.difficulty,
            ingredients: recipe.bridge_recipes_ingredients
                .map(
                  (
                    final Query$Recipes$recipes$bridge_recipes_ingredients
                        ingredients,
                  ) =>
                      optionOf(ingredients.ingredients)
                          .map(mapToHomeWebClientModelIngredient)
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
            yields: mapRecipeYields(yieldsJson: recipe.yields_json),
            tagIds: recipe.bridge_recipes_tags
                .map(
                  (final Query$Recipes$recipes$bridge_recipes_tags tags) =>
                      optionOf(tags.tags)
                          .map(
                            (
                              final Query$Recipes$recipes$bridge_recipes_tags$tags
                                  tag,
                            ) =>
                                tag.id,
                          )
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
            imagePath: optionOf(recipe.imagePath).map(Uri.parse),
            cuisineIds: recipe.bridge_recipes_cuisines
                .map(
                  (
                    final Query$Recipes$recipes$bridge_recipes_cuisines
                        cuisines,
                  ) =>
                      optionOf(cuisines.cuisines)
                          .map(
                            (
                              final Query$Recipes$recipes$bridge_recipes_cuisines$cuisines
                                  cuisine,
                            ) =>
                                cuisine.id,
                          )
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
          ),
        )
        .toList();

List<HomeWebClientModelYield> mapRecipeYields({
  required final String yieldsJson,
}) =>
    Option<List<Map<String, Object?>>>.tryCatch(
      () => jsonDecode(yieldsJson) as List<Map<String, Object?>>,
    )
        .map(
          (final List<Map<String, Object?>> yields) =>
              yields.map(WebClientModelYield.fromJson),
        )
        .map(
          (final Iterable<WebClientModelYield> yields) => yields
              .map(
                (final WebClientModelYield yield) => yield.yields
                    .map(
                      (final int servings) => mapToHomeWebClientModelYield(
                        servings: servings,
                        yield: yield,
                      ),
                    )
                    .toNullable(),
              )
              .whereNotNull()
              .toList(),
        )
        .getOrElse(() => <HomeWebClientModelYield>[]);

List<SingleRecipeWebClientModelYield> mapRecipeYields2({
  required final String yieldsJson,
  required final List<WebClientModelIngredient> ingredients,
}) =>
    Option<List<Map<String, Object?>>>.tryCatch(
      () => (jsonDecode(yieldsJson) as List<Object?>)
          .map((final Object? payload) => payload as Map<String, Object?>?)
          .whereNotNull()
          .toList(),
    )
        .map(
          (final List<Map<String, Object?>> yields) =>
              yields.map(WebClientModelYield.fromJson),
        )
        .map(
          (final Iterable<WebClientModelYield> yields) => yields
              .map(
                (final WebClientModelYield yield) => yield.yields
                    .map(
                      (final int servings) =>
                          mapSingleRecipeWebClientModelYield(
                        servings: servings,
                        yield: yield,
                        ingredients: ingredients,
                      ),
                    )
                    .toNullable(),
              )
              .whereNotNull()
              .toList(),
        )
        .getOrElse(() => <SingleRecipeWebClientModelYield>[]);

SingleRecipeWebClientModelYield mapSingleRecipeWebClientModelYield({
  required final int servings,
  required final WebClientModelYield yield,
  required final List<WebClientModelIngredient> ingredients,
}) =>
    SingleRecipeWebClientModelYield(
      servings: servings,
      ingredients: yield.ingredients
          .map(
            (final WebClientModelYieldIngredient yieldIngredient) => optionOf(
              ingredients.firstWhereOrNull(
                (final WebClientModelIngredient ingredient) =>
                    ingredient.id == yieldIngredient.id,
              ),
            )
                .map(
                  (final WebClientModelIngredient otherIngredient) =>
                      mapSingleRecipeWebClientModelIngredient(
                    amount: yieldIngredient.amount,
                    unit: yieldIngredient.unit,
                    ingredient: otherIngredient,
                  ),
                )
                .toNullable(),
          )
          .whereNotNull()
          .toList(),
    );

HomeWebClientModelRecipePagination mapToHomeWebClientModelRecipePagination({
  required final int skip,
  required final int take,
  required final Query$Recipes parsedData,
}) =>
    HomeWebClientModelRecipePagination(
      skip: skip,
      take: take,
      total: optionOf(
        parsedData.recipes_aggregate.aggregate?.count,
      ),
    );

SingleRecipeWebClientModelIngredient mapSingleRecipeWebClientModelIngredient({
  required final Option<num> amount,
  required final Option<String> unit,
  required final WebClientModelIngredient ingredient,
}) =>
    SingleRecipeWebClientModelIngredient(
      ingredientId: ingredient.id,
      amount: amount.map((final num number) => number.toDouble()),
      unit: unit,
      imagePath: ingredient.imagePath.map(Uri.parse),
      slug: ingredient.slug,
      displayedName: ingredient.name,
      family: ingredient.family.map(
        mapSingleRecipeWebClientModelIngredientFamily,
      ),
    );

HomeWebClientModelYield mapToHomeWebClientModelYield({
  required final int servings,
  required final WebClientModelYield yield,
}) =>
    HomeWebClientModelYield(
      yield: servings,
      yieldIngredient: yield.ingredients
          .map(mapToHomeWebClientModelYieldIngredient)
          .toList(),
    );

SingleRecipeWebClientModelStep mapToSingleRecipeWebClientModelStep(
  final WebClientModelStep step,
) =>
    SingleRecipeWebClientModelStep(
      instructionMarkdown: step.instructionsMarkdown,
      imagePath: optionOf(step.images.firstOrNull).map(
        (final WebClientModelStepImage image) => Uri.parse(image.path),
      ),
    );

SingleRecipeWebClientModelTag mapToSingleRecipeWebClientModelTag(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags tag,
) =>
    SingleRecipeWebClientModelTag(
      id: tag.id,
      slug: tag.slug,
      displayedName: tag.name,
    );

SingleRecipeWebClientModelDisplayedAttributes
    mapToSingleRecipeWebClientModelDisplayedAttributes(
  final Query$SingleRecipe$recipes_by_pk recipe,
) =>
        SingleRecipeWebClientModelDisplayedAttributes(
          name: recipe.name,
          headline: recipe.headline,
          description: recipe.description,
          descriptionMarkdown: optionOf(recipe.descriptionMarkdown),
        );

WebClientModelIngredient mapToWebClientModelIngredient(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
      ingredients,
) =>
    WebClientModelIngredient(
      id: ingredients.id,
      country: ingredients.country,
      slug: ingredients.slug,
      name: ingredients.name,
      type: ingredients.type,
      imagePath: optionOf(ingredients.imagePath),
      family: optionOf(ingredients.family).map(
        mapToWebClientModelIngredientFamily,
      ),
    );

HomeWebClientModelDisplayedAttributes
    mapToHomeWebClientModelDisplayedAttributes(
  final Query$Recipes$recipes recipe,
) =>
        HomeWebClientModelDisplayedAttributes(
          name: recipe.name,
          headline: recipe.headline,
          description: recipe.description,
          descriptionMarkdown: optionOf(recipe.descriptionMarkdown),
        );

HomeWebClientModelYieldIngredient mapToHomeWebClientModelYieldIngredient(
  final WebClientModelYieldIngredient ingredient,
) =>
    HomeWebClientModelYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount.map((final num number) => number.toDouble()),
      unit: ingredient.unit,
    );

HomeWebClientModelIngredient mapToHomeWebClientModelIngredient(
  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients ingredient,
) =>
    HomeWebClientModelIngredient(
      id: ingredient.id,
      slug: ingredient.slug,
      displayedName: ingredient.name,
    );

HomeWebClientModelCuisine mapToHomeWebClientModelCuisine(
  final Query$GetCuisines$cuisines cuisine,
) =>
    HomeWebClientModelCuisine(
      id: cuisine.id,
      slug: cuisine.slug,
      iconPath: optionOf(cuisine.iconPath).map(Uri.parse),
      displayedName: cuisine.name,
      numberOfRecipes: optionOf(
        cuisine.bridge_recipes_cuisines_aggregate.aggregate?.count,
      ),
    );

SingleRecipeWebClientModelIngredientFamily
    mapSingleRecipeWebClientModelIngredientFamily(
  final WebClientModelIngredientFamily family,
) =>
        SingleRecipeWebClientModelIngredientFamily(
          id: family.id,
          slug: family.slug,
          type: family.type,
          iconPath: family.iconPath,
          name: family.name,
        );

WebClientModelIngredientFamily mapToWebClientModelIngredientFamily(
  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
      family,
) =>
    WebClientModelIngredientFamily(
      id: family.id,
      type: family.type,
      iconPath: optionOf(family.iconPath),
      name: family.name,
      slug: family.slug,
    );

HomeWebClientModelTag mapToHomeWebClientModelTag(
  final Query$GetTags$tags tag,
) =>
    HomeWebClientModelTag(
      id: tag.id,
      type: tag.type,
      displayedName: tag.name,
      numberOfRecipes: optionOf(
        tag.bridge_recipes_tags_aggregate.aggregate?.count,
      ),
    );

IngredientsSortingWebClientModelIngredientFamily
    mapToIngredientsSortingWebClientModelIngredientFamily(
  final Query$GetIngredientFamilies$ingredient_family family,
) =>
        IngredientsSortingWebClientModelIngredientFamily(
          id: family.id,
          type: family.type,
          iconPath: optionOf(family.iconPath).map(Uri.parse),
          name: family.name,
          slug: family.slug,
        );
