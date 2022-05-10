import 'package:equatable/equatable.dart';


class PreviewCardsItem extends Equatable{
  final String name;
  final String image;



  const PreviewCardsItem({
    required this.image,
    required this.name,
  });

  @override
  List<Object?> get props => [name, image];


  static List<PreviewCardsItem> previewcards = [
    const PreviewCardsItem(
      name: 'Pizza',
        image: 'assets/Pizza.jpg'
    ),
    const PreviewCardsItem(
      name: 'Burger',
        image: 'assets/cheesecake.jpg'
    ),
    const PreviewCardsItem(
      name: 'Vegetables',
        image: 'assets/burger.jpg'
    ),
    const PreviewCardsItem(
      name: 'Desert',
        image: 'assets/sonas.jpg'
    ),
  ];

}
