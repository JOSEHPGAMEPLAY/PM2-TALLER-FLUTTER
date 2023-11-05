import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Pokedex'),
        actions: const [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.all(15)),
          Icon(Icons.more_vert_outlined),
          Padding(padding: EdgeInsets.all(15)),
        ],
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
