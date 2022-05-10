import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_delivery_app/models/category_model.dart';
import 'package:my_delivery_app/models/food_model.dart';
import 'package:my_delivery_app/presentation/widgets/bottom_navigation_bar_custom.dart';
import 'package:my_delivery_app/presentation/widgets/category_cards.dart';
import 'package:my_delivery_app/presentation/widgets/food_cards.dart';
import 'package:my_delivery_app/presentation/widgets/preview_cards.dart';
import 'package:flutter/material.dart';
import 'package:my_delivery_app/presentation/widgets/text_field_custom.dart';

import '../../models/preview_cards_model.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarCustom(),
      body: ListView(children: [
        Column(
          children: [
            const TextFieldCustom(),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                ),
                items: PreviewCardsItem.previewcards
                    .map((category) => PreviewCards(category: category))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Category.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCards(category: Category.categories[index]);
                  },
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Food.food.length,
                itemBuilder: (context, index) {
                return FoodCard(food: Food.food[index]);
                }
            ),
          ],
        ),
      ]),
    );
  }
}
