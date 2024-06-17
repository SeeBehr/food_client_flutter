import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/single_recipe/services/persistance_service/single_recipe_persistence_service.dart';
import 'package:food_client/pages/features/single_recipe/services/single_recipe_navigation_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_client_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_image_sizer_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:share_plus/share_plus.dart';

part 'single_recipe_utils.dart';

class SingleRecipeCubit extends Cubit<SingleRecipeState> {
  final SingleRecipeNavigationService _navigationService;
  final SingleRecipePersistenceService _persistenceService;
  final SingleRecipeWebClientService _webClientService;
  final SingleRecipeWebImageSizerService _webImageSizerService;
  final LoggingService _logger;
  SingleRecipeCubit({
    required final SingleRecipeNavigationService navigationService,
    required final SingleRecipePersistenceService persistenceService,
    required final SingleRecipeWebClientService webClientService,
    required final SingleRecipeWebImageSizerService webImageSizerService,
    required final LoggingService logger,
    required final Option<int> selectedYield,
    required final String recipeId,
  })  : _navigationService = navigationService,
        _persistenceService = persistenceService,
        _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        _logger = logger,
        super(
          SingleRecipeState(
            recipeId: recipeId,
            recipe: const ViewState<SingleRecipeModel>.loading(),
            selectedYield: selectedYield,
          ),
        ) {
    unawaited(fetchSingleRecipe().run());
  }

  Task<void> fetchSingleRecipe() => _webClientService
          .fetchSingleRecipe(recipeId: state.recipeId)
          .map(
            (final SingleRecipeWebClientModelRecipe recipe) =>
                mapToSingleRecipeModelRecipe(
              recipe: recipe,
              imageResizerService: _webImageSizerService,
              persistenceService: _persistenceService,
            ),
          )
          .match(
        (Exception error) {
          _logger.error(
            MyError(
              message: 'Failed to fetch recipe with id ${state.recipeId}',
              originalError: error,
            ),
          );

          emit(state.copyWith(recipe: error.toViewStateError()));
        },
        (SingleRecipeModel recipe) {
          emit(
            state.copyWith(
              recipe: recipe.toViewStateData(),
              selectedYield: recipe.yields.firstOption.map(
                (final SingleRecipeModelYield yield) => yield.servings,
              ),
            ),
          );
        },
      );

  void shareRecipe({required final SingleRecipeModel recipe}) {
    unawaited(_shareRecipe(recipe: recipe));
  }

  Future<void> _shareRecipe({
    required final SingleRecipeModel recipe,
  }) async {
    (await _webClientService
            .buildShareUrl(recipeId: recipe.id, recipeSlug: recipe.slug)
            .run())
        .fold(
      (final Exception exception) => _navigationService.showSnackBar(
        message: 'ui.single_recipe_view.snack_bars.share_recipe_error'.tr(),
      ),
      (final Uri url) => Share.share(url.toString()),
    );
  }

  void goBack() {
    _navigationService.goBack();
  }

  void openAddToShoppingCartDialog({
    required final SingleRecipeModel recipe,
    required final String recipeId,
  }) {
    unawaited(
      state.selectedYield
          .flatMap(
            (int servings) => optionOf(
              recipe.yields.firstWhereOrNull(
                (final SingleRecipeModelYield yield) =>
                    yield.servings == servings,
              ),
            ),
          )
          .map(
            (SingleRecipeModelYield yield) => _persistenceService.addRecipe(
              recipe: SingleRecipePersistenceServiceRecipe(
                ingredients: yield.ingredients
                    .map(
                      (
                        final SingleRecipeModelIngredient ingredient,
                      ) =>
                          _mapToSingleRecipePersistenceServiceIngredient(
                        ingredient: ingredient,
                      ),
                    )
                    .toList(),
                recipeId: recipeId,
                servings: yield.servings,
                imagePath: recipe.imagePath,
                title: recipe.displayedAttributes.name,
              ),
            ),
          )
          .getOrElse(
            () => Task<void>(
              () async => _logger.error(MyError(message: 'No yield selected')),
            ),
          )
          .run(),
    );

    _navigationService.showSnackBar(
      message: 'ui.single_recipe_view.snack_bars.add_to_cart_success'.tr(),
    );
  }

  void setSelectedYield({
    required final int yield,
    required final String recipeId,
  }) =>
      emit(state.copyWith(selectedYield: some(yield)));
}
