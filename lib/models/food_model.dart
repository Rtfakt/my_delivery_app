import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Food extends Equatable {
  final int foodId;
  final String foodName;
  final int foodPrice;
  final String foodImage;


  const Food(
      {required this.foodId,
      required this.foodName,
      required this.foodImage,
      required this.foodPrice});

  @override
  // TODO: implement props
  List<Object?> get props => [foodId, foodName, foodPrice, foodImage];

  static List<Food> food = [
    const Food(
        foodId: 1,
        foodName: 'Pizza1',
        foodImage: 'assets/foodCard/Pizza1.png',
        foodPrice: 70),
    const Food(
        foodId: 2,
        foodName: 'Pizza2',
        foodImage: 'assets/foodCard/Pizza2.png',
        foodPrice: 70),
    const Food(
        foodId: 3,
        foodName: 'Pizza3',
        foodImage: 'assets/foodCard/Pizza3.png',
        foodPrice: 70),
    const Food(
        foodId: 4,
        foodName: 'Burger1',
        foodImage: 'assets/foodCard/Burger1.png',
        foodPrice: 70),
    const Food(
        foodId: 5,
        foodName: 'Burger2',
        foodImage: 'assets/foodCard/Burger2.png',
        foodPrice: 70),
    const Food(
        foodId: 6,
        foodName: 'Burger3',
        foodImage: 'assets/foodCard/Burger3.png',
        foodPrice: 70),
    const Food(
        foodId: 7,
        foodName: 'Desert1',
        foodImage: 'assets/foodCard/Desert1.png',
        foodPrice: 70),
    const Food(
        foodId: 8,
        foodName: 'Desert2',
        foodImage: 'assets/foodCard/Desert2.png',
        foodPrice: 70),
    const Food(
        foodId: 9,
        foodName: 'Desert3',
        foodImage: 'assets/foodCard/Desert3.png',
        foodPrice: 70),
    const Food(
        foodId: 10,
        foodName: 'Drink1',
        foodImage: 'assets/foodCard/Drink1.png',
        foodPrice: 70),
    const Food(
        foodId: 11,
        foodName: 'Drink2',
        foodImage: 'assets/foodCard/Drink2.png',
        foodPrice: 70),
    const Food(
        foodId: 12,
        foodName: 'Drink3',
        foodImage: 'assets/foodCard/Drink3.png',
        foodPrice: 70),
    const Food(
        foodId: 13,
        foodName: 'Salad1',
        foodImage: 'assets/foodCard/Salad1.png',
        foodPrice: 70),
    const Food(
        foodId: 14,
        foodName: 'Salad2',
        foodImage: 'assets/foodCard/Salad2.png',
        foodPrice: 70),
    const Food(
        foodId: 15,
        foodName: 'Salad3',
        foodImage: 'assets/foodCard/Salad3.png',
        foodPrice: 70),
  ];

}
