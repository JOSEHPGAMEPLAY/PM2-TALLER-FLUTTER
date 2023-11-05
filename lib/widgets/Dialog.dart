import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('CREDITOS'),
      content: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Jose Hernando Vera Jaimes', textAlign: TextAlign.left,),
          Text('Jhoan Esneider Mantilla Hernandez', textAlign: TextAlign.left,),
          Text('Imagenes extraidas de : ', textAlign: TextAlign.left,),
          Text('www.pokemon.com', textAlign: TextAlign.left,),
        ],
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('Cerrar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}