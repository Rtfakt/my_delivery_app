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
    return  Container(
        color: Theme.of(context).primaryColor,
    child: TextButton(
          onPressed: () {},
              child: Text(
                category.name,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                ),
              ),
        ),
    );
  }
}
