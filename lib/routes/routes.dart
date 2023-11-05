import 'package:pokemons/pages/pages.dart';
import 'package:flutter/material.dart';

class Rutas {
  static const initialRoute = '/home';
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const Home(),
    '/pokemon': (context) {
      final Map<String, dynamic>? args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      if (args != null) {
        final Map<String, dynamic> pokemonu = args['pokemonu'];
        return Pokemon(pokemonu: pokemonu);
      }
      else{
        return const Home();
      }
    },
  };
  static Route<dynamic> onGernerate(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Home(),
    );
  }
}
