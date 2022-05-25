import 'package:flutter/material.dart';
import 'package:my_delivery_app/models/add_ingredients_model.dart';
import 'package:my_delivery_app/models/food_model.dart';
import 'package:my_delivery_app/presentation/widgets/add_drinks.dart';
import 'package:my_delivery_app/presentation/widgets/add_ingredients.dart';

class FoodDetailsPage extends StatelessWidget {
  static const String routeName = '/food-details';

  static Route route({required Food food}) {
    return MaterialPageRoute(
      builder: (_) =>  FoodDetailsPage(food: food),
      settings: const RouteSettings(name: routeName),
    );
  }
  final Food food;


  const FoodDetailsPage({
    Key? key, required this.food,
  });

  @override
  Widget build(BuildContext context) {
    final Ingredients ingredients;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                primary: Colors.deepOrange,
              ),
              onPressed: () {},
              child: const Text('В корзину'),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverAppBar(
              toolbarHeight: 80,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: SizedBox(
                  child: Center(
                    child: RichText(
                      text:  TextSpan(
                        text: food.foodName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  width: double.maxFinite,
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: Image.asset(
                    food.foodImage,
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              expandedHeight: 340,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: const Text(
                'Добавить ингредиенты',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(
              20,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                mainAxisSpacing: 20,
                crossAxisSpacing: 8,
                childAspectRatio: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return AddIngredients(
                      ingredients: Ingredients.ingredients[index]);
                },
                childCount: Ingredients.ingredients.length,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: const Text(
                'Напитки',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              mainAxisSpacing: 20,
              crossAxisSpacing: 8,
              childAspectRatio: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const Card();
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: const Text(
                'Описание',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: const Text(
                'многобукофkfarbgrje.kgb.rgc regsk.cg.sc.gkbfd.scghelrcmglerchng;cnvhgslnvghvnlsghvlkghse.vgnkskcgns.',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
