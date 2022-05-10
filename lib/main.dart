import 'package:flutter/material.dart';
import 'package:my_delivery_app/config/app_route.dart';
import 'package:my_delivery_app/config/theme.dart';
import 'package:my_delivery_app/presentation/pages/home_page.dart';
import 'package:my_delivery_app/presentation/pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomePage.routeName,
      home: const SplashScreenPage(),
    );
  }
}