import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF303030),
            ),
          ),
          hoverColor: Colors.black45,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFF303030),
            ),
          ),
          hintText: 'Поиск',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
