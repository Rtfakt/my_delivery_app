import 'package:flutter/material.dart';
import 'package:my_delivery_app/models/add_ingredients_model.dart';

class AddIngredients extends StatelessWidget {
  final Ingredients ingredients;

  const AddIngredients({
    Key? key,
    required this.ingredients,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.grey,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        )
      ),
      child: FittedBox(
        child: Text(
          ingredients.name,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
      onPressed: () => print('TapButton'),
    );
  }
}
