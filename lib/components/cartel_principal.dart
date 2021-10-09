import 'dart:ffi';

import 'package:clon_netflix/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[this.cabecera(), this.infoSerie(), this.botonera()],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: const [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text('Mi Lista',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
          TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              icon: Icon(Icons.play_arrow, color: Colors.black),
              label: Text('Reproducir')),
          Column(
            children: const [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text('Informacion',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        ],
      ),
    );
  }

  Widget infoSerie() {
    List<String> prueba = [
      'Telenovela',
      'Suspenso Insostenible',
      'De suspenso',
      'Adoles'
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var item in prueba) ...[
          const Icon(
            Icons.fiber_manual_record,
            color: Colors.red,
            size: 5,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text(item, style: const TextStyle(color: Colors.white, fontSize: 10)),
          const SizedBox(
            width: 6.0,
          ),
        ]
      ],
    );
  }

  Widget cabecera() {
    return Stack(children: <Widget>[
      Image.network(
        'https://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg',
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 350,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[
              Colors.black38,
              Colors.black,
            ])),
      ),
      SafeArea(child: NavBarSuperior())
    ]);
  }
}
