import 'package:flutter/material.dart';

class BaskedPage extends StatelessWidget {
  static const String routeName = '/basked';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const BaskedPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const BaskedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('home page'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}
