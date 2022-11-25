import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:fpdart/fpdart.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final HomeModel model = ref.watch(homeControllerImplementationProvider);
    final HomeController controller = ref.read(
      homeControllerImplementationProvider.notifier,
    );

    return Scaffold(
      backgroundColor: Colors.lightBlue.withOpacity(0.2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildFilterChips(controller: controller, model: model),
              buildRecipesList(
                tags: model.tags,
                controller: controller,
                recipes: model.filteredRecipes,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildFilterChips({
    required final HomeController controller,
    required final HomeModel model,
  }) =>
      Row(
        children: <Widget>[
          buildSingleFilterChip(
            text: 'Tags',
            controller: controller,
            filters: model.tags,
            widgetToOpenOnClick: buildDialogTags(title: 'Tags'),
          ),
          buildSingleFilterChip(
            text: 'Cuisines',
            controller: controller,
            filters: model.cuisines,
            widgetToOpenOnClick: buildDialogCuisines(title: 'Cuisines'),
          ),
        ],
      );

  ChoiceChip buildSingleFilterChip({
    required final String text,
    required final List<HomeModelFilter> filters,
    required final HomeController controller,
    required final Widget widgetToOpenOnClick,
  }) =>
      ChoiceChip(
        avatar: Text(
          filters
              .filter(
                (final HomeModelFilter tag) => tag.isSelected,
              )
              .length
              .toString(),
        ),
        label: Text(text),
        selected: filters
            .filter(
              (final HomeModelFilter tag) => tag.isSelected,
            )
            .isNotEmpty,
        onSelected: (final bool selected) {
          controller.openDialog(
            child: widgetToOpenOnClick,
          );
        },
      );

  Expanded buildRecipesList({
    required final List<HomeModelRecipe> recipes,
    required final HomeController controller,
    required final List<HomeModelFilterTag> tags,
  }) =>
      Expanded(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (final BuildContext context, final int index) =>
              _buildRecipeCardItem(
            recipe: recipes[index],
            tags: tags,
            controller: controller,
          ),
        ),
      );

  Widget _buildRecipeCardItem({
    required final HomeModelRecipe recipe,
    required final HomeController controller,
    required final List<HomeModelFilterTag> tags,
  }) =>
      InkWell(
        onTap: () => controller.goToSingleRecipeView(recipeId: recipe.id),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                Image.network(
                  recipe.imageUriLarge.toString(),
                  errorBuilder: (final _, final __, final ___) => const Padding(
                    padding: EdgeInsets.all(64),
                    child: Icon(Icons.image_not_supported),
                  ),
                ),
                buildRecipeCardItemDescription(
                  recipe: recipe,
                  tags: tags,
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildRecipeCardItemDescription({
    required final HomeModelRecipe recipe,
    required final List<HomeModelFilterTag> tags,
  }) =>
      ColoredBox(
        color: Colors.white.withOpacity(0.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(recipe.displayedAttributes.name),
              subtitle: Text(
                recipe.displayedAttributes.headline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: recipe.tagIds
                    .map(
                      (final String tagId) => optionOf(
                        tags.firstWhereOrNull(
                          (final HomeModelFilterTag element) => element.id == tagId,
                        ),
                      ).map(
                        (final HomeModelFilterTag tag) => Chip(
                          label: Text(tag.displayedName),
                        ),
                      ),
                    )
                    .whereType<Some<Widget>>()
                    .map((final Some<Widget> optional) => optional.value)
                    .toList(),
              ),
            ),
          ],
        ),
      );
}

Widget buildDialogTags({
  required final String title,
}) =>
    Consumer(
      builder: (
        final BuildContext context,
        final WidgetRef ref,
        final Widget? child,
      ) =>
          Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(title, style: Theme.of(context).textTheme.headlineLarge),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: ref
                      .watch(homeControllerImplementationProvider)
                      .tags
                      .map(
                        (final HomeModelFilterTag tag) => ChoiceChip(
                          label: Text(tag.displayedName),
                          selected: tag.isSelected,
                          onSelected: (final bool selected) => ref
                              .watch(
                                homeControllerImplementationProvider.notifier,
                              )
                              .setTagSelected(
                                tagId: tag.id,
                                selected: selected,
                              ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      child: const Text('Good job!'),
    );

Widget buildDialogCuisines({
  required final String title,
}) =>
    Consumer(
      builder: (
        final BuildContext context,
        final WidgetRef ref,
        final Widget? child,
      ) =>
          Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(title, style: Theme.of(context).textTheme.headlineLarge),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: ref
                      .watch(homeControllerImplementationProvider)
                      .cuisines
                      .map(
                        (final HomeModelFilterCuisine cuisine) => ChoiceChip(
                          label: Text(cuisine.displayedName),
                          selected: cuisine.isSelected,
                          onSelected: (final bool selected) => ref
                              .watch(
                                homeControllerImplementationProvider.notifier,
                              )
                              .setCuisineSelected(
                                cuisineId: cuisine.id,
                                selected: selected,
                              ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      child: const Text('Good job!'),
    );

abstract class HomeController {
  void setTagSelected({
    required final String tagId,
    required final bool selected,
  });
  void setCuisineSelected({
    required final String cuisineId,
    required final bool selected,
  });
  void goToSingleRecipeView({
    required final String recipeId,
  });

  void openDialog({required final Widget child});
}
