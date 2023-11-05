import 'dart:ui';

import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  final pokemonu;
  const Pokemon({super.key, this.pokemonu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonu['nombre']),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(children: [
                SizedBox(
                  height: 200,
                  // MediaQuery para cocupar toda la pantalla
                  width: MediaQuery.of(context).size.width,
                  child: const FadeInImage(
                    placeholder: AssetImage('elgif.gif'),
                    image: AssetImage('pokemon.jpeg'),
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(microseconds: 1000),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  ('Datos de ' + pokemonu['nombre']),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pokemonu['informacion'],
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Title(
                color: Colors.black,
                child: Text(
                  ('Habilidades del pokemon ' + pokemonu['nombre']),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              Column(
                children: pokemonu['habilidades'].map<Widget>((habilidad) {
                  return ListTile(
                    title: Text(habilidad),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.deepPurple[50],
                      foregroundImage: AssetImage(pokemonu['avatar'])),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Icon(Icons.turn_left_rounded)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
