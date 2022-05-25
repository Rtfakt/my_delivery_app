import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_delivery_app/models/category_model.dart';
import 'package:my_delivery_app/models/food_model.dart';
import 'package:my_delivery_app/presentation/widgets/bottom_navigation_bar_custom.dart';
import 'package:my_delivery_app/presentation/widgets/category_cards.dart';
import 'package:my_delivery_app/presentation/widgets/food_cards.dart';
import 'package:my_delivery_app/presentation/widgets/preview_cards.dart';
import 'package:flutter/material.dart';
import 'package:my_delivery_app/presentation/widgets/text_field_custom.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        bottomNavigationBar: const BottomNavigationBarCustom(),
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            pinned: true,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const TextFieldCustom();
              },
              childCount: 1,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CarouselSlider(
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
                  );
                },
                childCount: 1,
              ),
            ),
          ),
          SliverPinnedHeader(
            child: SizedBox(
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Category.categories.length,
                itemBuilder: (context, index) {
                  return CategoryCards(category: Category.categories[index]);
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return FoodCard(food: Food.food[index]);
              },
              childCount: Food.food.length,
            ),
          ),
        ]),
      ),
    );
  }
}
