import 'package:flutter/material.dart';

import '../../models/food_model.dart';

class AddDrinks extends StatelessWidget {
  final Food food;
  const AddDrinks({
    Key? key, required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      OutlinedButton(
        onPressed: () {},
        child: Image.asset(food.foodImage),
    );
  }
}
