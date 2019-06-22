import 'package:beatsapp/src/widget/cards_view.dart';
import 'package:flutter/material.dart';

import 'package:beatsapp/src/widget/custom_appbar.dart';
import 'package:beatsapp/src/widget/fondo_circular.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAppBar(),
                  _Header(),
                  CardsView()
                ],
              ),
            ),
          ),
          BuyButton(),
        ],
      ),
    );
  }  
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45.0,),
          Text('Beats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('By Dre', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18.0))
        ],
      )
    );
  }
}

class BuyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            width: size.width * 0.3,
            height: 75.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 76, 87, 1.0),
                  Color.fromRGBO(255, 46, 59, 1.0)
                ]
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Buy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
                SizedBox(width: 5.0),
                Icon(FontAwesomeIcons.arrowRight, color: Colors.white)
              ],
            ),
          ),
        )
      ],
    );
  }
}




