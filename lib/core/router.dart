import 'package:flutter/material.dart';
import 'package:provider_demo/core/routes.dart';
import 'package:provider_demo/ui/home_screen.dart';
import 'package:provider_demo/ui/second.dart';

class PageRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.second:
        return MaterialPageRoute(
          builder: (context) => Second(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Text('Page Not found'),
            );
          },
        );
    }
  }
}
