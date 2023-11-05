import 'package:flutter/material.dart';
import 'package:pokemons/data/pokemonsMap.dart';
import 'package:pokemons/pages/pages.dart';

class PokemonsList extends StatelessWidget {
  const PokemonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        color: Colors.grey,
        height: 5,
      ),
      itemBuilder: (BuildContext context, index) {
        index = index + 1;
        String avatar = pokemonsMap[index]?['avatar'];
        String nombre = pokemonsMap[index]?['nombre'];
        String descripcion = pokemonsMap[index]?['descripcion'];

        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black26,
            foregroundImage: AssetImage(avatar), //
          ),
          title: Text(nombre),
          subtitle: Text(descripcion),
          trailing: const Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onLongPress: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Pokemon(pokemonu: pokemonsMap[index],),
              ),
            );
          },
        );
      },
      itemCount: pokemonsMap.length,
    );
  }
}
