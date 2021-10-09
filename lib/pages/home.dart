import 'package:clon_netflix/components/cartel_principal.dart';
import 'package:clon_netflix/components/item_img.dart';
import 'package:clon_netflix/components/item_redondeado.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Tendencias', ItemImg(), 9),
          this.listaHorizontal('Peliculas', ItemImg(), 9),
          this.listaHorizontal('Series', ItemImg(), 9),
          this.listaHorizontal('Favoritas', ItemImg(), 9),
        ],
      ),
      bottomNavigationBar: this.navinferior(),
    );
  }

  BottomNavigationBar navinferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Proximos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward), label: 'Descargas'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Mas')
        ]);
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              }),
        )
      ],
    );
  }
}
