import 'package:flutter/material.dart';

class LocationSearch extends StatelessWidget {
  const LocationSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF303030),
          hintText: 'Введите адрес доставки',
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: const Icon(Icons.search,
            color: Colors.deepOrange,),
          contentPadding:
          const EdgeInsets.only(left: 20, bottom: 5, right: 5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFF303030),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFF303030),
            ),
          ),
        ),),
    ),);
  }
}
