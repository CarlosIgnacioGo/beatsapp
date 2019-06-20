import 'package:flutter/material.dart';

import 'package:beatsapp/src/widget/custom_appbar.dart';
import 'package:beatsapp/src/widget/fondo_circular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FondoCircular(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CustomAppBar()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }  
}



