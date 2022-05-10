import 'package:flutter/material.dart';

import '../presentation/pages/basket_page.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/location_page.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case HomePage.routeName:
        return HomePage.route();
      case LocationPage.routeName:
        return LocationPage.route();
      case BaskedPage.routeName:
        return BaskedPage.route();



        default:
        return _errorRoute();
    }
  }


  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          Scaffold(
            appBar: AppBar(title: const Text('error'),),
          ),
      settings: const RouteSettings(name: '/error'),
    );
  }


}




