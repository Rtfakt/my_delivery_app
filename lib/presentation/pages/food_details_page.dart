import 'package:flutter/material.dart';
import 'package:my_delivery_app/models/food_model.dart';

class FoodDetailsPage extends StatelessWidget {
  static const String routeName = '/food-details';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const FoodDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const FoodDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Food food = Food.food[0];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
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
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: SizedBox(
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Pizza1',
                        style: TextStyle(
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
                'Убрать ингредиенты',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(
              15,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 20,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4,
              ) ,
              delegate: SliverChildBuilderDelegate(
                  (context, index) {

                  })
              ),
            ),
        ],
      ),
    );
  }
}
