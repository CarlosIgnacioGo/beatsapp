import 'package:flutter/material.dart';

class FondoCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[ 
        Positioned(
          right: -(size.width) * 1.1,
          top: -(size.width) * 0.4,
          child: Container(
            width: size.width * 1.8,
            height: size.width * 1.8,
            decoration: BoxDecoration(
              color: Color.fromRGBO(239, 239, 239, 1.0),
              borderRadius: BorderRadius.circular(2000.0)
            ),
          ),
        ),
      ]
    );
  }
}