import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.yellow, width: 1)),
              child: ClipOval(
                child: Image.network(
                  'https://alertageekchile.cl/wp-content/uploads/2017/12/c245fb206fecea20e4f18e26dc8fa74aae6f80b5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'D A R K',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
