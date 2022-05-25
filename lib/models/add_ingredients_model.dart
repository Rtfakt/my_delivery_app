import 'package:equatable/equatable.dart';

class Ingredients extends Equatable {
  final int id;
  final String name;

  const Ingredients({required this.id, required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [

        name,
      ];

  static List<Ingredients> ingredients = [
    const Ingredients(
      id: 1,
      name: 'Моцарела',
    ),
    const Ingredients(
      id: 2,
      name: 'Ветчина',
    ),
    const Ingredients(
      id: 3,
      name: 'Соус',
    ),
    const Ingredients(
      id: 4,
      name: 'Свежие томаты',
    ),
    const Ingredients(
      id: 5,
      name: 'Соленые огурцы',
    ),
    const Ingredients(
      id: 6,
      name: 'Сочные ананасы',
    ),
    const Ingredients(
      id: 7,
      name: 'Чеддер',
    ),
    const Ingredients(
      id: 8,
      name: 'Маслины',
    ),
    const Ingredients(
      id: 9,
      name: 'Шампиньоны',
    ),
  ];
}
