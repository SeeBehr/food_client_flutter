import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/cart/cart_model.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final CartModel model = ref.watch(
      providers.cartControllerProvider,
    );
    final CartController controller = ref.watch(
      providers.cartControllerProvider.notifier,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultTabController(
          length: 1,
          child: Column(
            children: <Widget>[
              _buildTabBar(),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.recipes
                      .map((final CartModelRecipe recipe) => recipe.ingredients)
                      .flattened
                      .length,
                  itemBuilder: (final BuildContext context, final int index) =>
                      model.recipes
                          .map(
                            (final CartModelRecipe recipe) =>
                                recipe.ingredients.map(
                              (final CartModelIngredient ingredient) =>
                                  buildSingleIngredient(
                                ingredient: ingredient,
                                controller: controller,
                                recipeId: recipe.recipeId,
                                color: recipe.color,
                              ),
                            ),
                          )
                          .flattened
                          .toList()[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() => Builder(
        builder: (final BuildContext context) => TabBar(
          labelColor: Theme.of(context).indicatorColor,
          splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
          indicator: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          indicatorColor: Colors.red,
          tabs: const <Widget>[
            Tab(text: 'Einkaufen'),
          ],
        ),
      );

  Widget buildSingleIngredient({
    required final String recipeId,
    required final Color color,
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Card(
        color: ingredient.isTickedOff ? Colors.grey.shade300 : color,
        child: Builder(
          builder: (final BuildContext context) => InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () async => controller.tickOff(
              ingredientId: ingredient.ingredient.ingredientId,
              recipeId: recipeId,
              isTickedOff: !ingredient.isTickedOff,
            ),
            onLongPress: controller.showDeleteDialog,
            child: ListTile(
              enabled: !ingredient.isTickedOff,
              leading: AspectRatio(
                aspectRatio: 1,
                child: ingredient.ingredient.imageUrl.fold(
                  () => const Icon(Icons.image_not_supported),
                  (final Uri url) => Image.network(
                    url.toString(),
                    errorBuilder: (final _, final __, final ___) =>
                        const Icon(Icons.image_not_supported),
                  ),
                ),
              ),
              title: Text(ingredient.ingredient.displayedName),
              subtitle: Text(
                '${ingredient.ingredient.amount.fold(
                  () => 'nach Ermessen',
                  (final double amount) => amount.toString(),
                )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
              ),
              trailing: IconButton(
                padding: const EdgeInsets.all(16),
                onPressed: () =>
                    controller.openSingleRecipe(recipeId: recipeId),
                icon: const Icon(Icons.forward),
              ),
            ),
          ),
        ),
      );
}

abstract class CartController extends StateNotifier<CartModel> {
  CartController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
  void openSingleRecipe({required final String recipeId});
  Future<void> tickOff({
    required final String ingredientId,
    required final String recipeId,
    required final bool isTickedOff,
  });
  void showDeleteDialog();
}
