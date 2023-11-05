import 'package:pokemons/pages/pages.dart';
import 'package:flutter/material.dart';

class Rutas {
  static const initialRoute = '/home';
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const Home(),
    '/pokemon': (context) => const Pokemon(),
    '/notfoun': (context) => const NotFound(),
  };
  static Route<dynamic> onGernerate(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      case '/pokemon':
        return MaterialPageRoute(
          builder: (context) => const Pokemon(),
        );
      default:
      return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
    
  }
}