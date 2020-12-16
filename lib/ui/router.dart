import 'package:cupcake/ui/home/home_ui.dart';
import 'package:flutter/material.dart';

class CupcakeRouter {
  static const String routeHome = "home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeUi());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
