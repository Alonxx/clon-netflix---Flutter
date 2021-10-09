import 'package:clon_netflix/pages/home.dart';
import 'package:flutter/material.dart'; //libreria de widtegts

void main() {
  runApp(MyApp());
}

// en flutter los widgtes son class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
