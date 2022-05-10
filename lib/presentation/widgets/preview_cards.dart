import 'package:flutter/material.dart';

import '../../models/preview_cards_model.dart';


class PreviewCards extends StatelessWidget {
  final PreviewCardsItem category;

  const PreviewCards({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                  category.image,
                  fit: BoxFit.cover,
                  width: 1000.0,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
