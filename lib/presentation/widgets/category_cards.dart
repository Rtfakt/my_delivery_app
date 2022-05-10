import 'package:flutter/material.dart';

import '../../models/category_model.dart';


class CategoryCards extends StatelessWidget {
  final Category category;

  const CategoryCards({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).primaryColor,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              category.name,
              style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
