


import 'package:flutter/material.dart';


class BottomNavigationBarCustom extends StatelessWidget {
  final Color _iconsColor = Colors.grey;
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0x0FF1B2025),
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              color: _iconsColor,
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(

              color: _iconsColor,
              icon: const Icon(Icons.location_on),
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
            ),
            IconButton(
              iconSize: 40,
              color: Colors.deepOrange,
              icon: const Icon(Icons.qr_code),
              onPressed: () {
                Navigator.pushNamed(context, '/food-details');
              },
            ),
            IconButton(
              color: _iconsColor,
              icon: const Icon(Icons.shopping_basket),
              onPressed: () {},
            ),
            IconButton(
              color: _iconsColor,
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),

    );
  }
}
