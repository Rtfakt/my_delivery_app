import 'package:equatable/equatable.dart';


class Category extends Equatable {
  final int id;
  final String name;


  const Category({required this.id, required this.name,});

  @override
  // TODO: implement props
  List<Object?> get props => [name,];


  static List<Category> categories = [
    const Category(
      id: 1,
      name: 'Пицца',
      ),
    const Category(
      id: 2,
      name: 'Бургеры',
      ),

    const Category(
      id: 3,
      name: 'Десерты',
      ),

    const Category(
      id: 4,
      name: 'Напитки',
      ),

    const Category(
      id: 5,
      name: 'Салаты',
      ),

  ];
}