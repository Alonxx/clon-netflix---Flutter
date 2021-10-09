import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://pics.filmaffinity.com/the_founder-172341798-mmed.jpg',
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
