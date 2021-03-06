import 'package:flutter/material.dart';
import 'package:my_delivery_app/models/food_model.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
            context, '/food-details',
            arguments: food);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 08,
        height: 150,
        decoration: const BoxDecoration(),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              food.foodImage,
              width: 150,
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      food.foodName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey,
                  ),
                  child: Text(
                    '${food.foodPrice} ₽',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
