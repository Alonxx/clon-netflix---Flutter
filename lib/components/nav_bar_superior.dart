import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset('assets/imgs/logo.png', width: 30),
        const Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        const Text('Peliculas',
            style: TextStyle(color: Colors.white, fontSize: 16)),
        const Text('Mi lista',
            style: TextStyle(color: Colors.white, fontSize: 16))
      ],
    );
  }
}
