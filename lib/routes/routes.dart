import 'package:car_service/views/home_page.dart';
import 'package:car_service/views/services.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String service = '/service';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case service:
        return MaterialPageRoute(builder: (_) => const Services());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
