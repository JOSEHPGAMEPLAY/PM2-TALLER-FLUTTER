import 'package:flutter/material.dart';
import 'package:pokemons/routes/routes.dart';
import 'package:pokemons/theme/appTheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppTheme.darkTheme,
      title: 'Pokedex',
      initialRoute: Rutas.initialRoute,
      routes: Rutas.routes,
      onGenerateRoute: Rutas.onGernerate,
    );
  }
}