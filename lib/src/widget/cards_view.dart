import 'package:beatsapp/src/models/produts_model.dart';
import 'package:beatsapp/src/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productos = Provider.of<ProductosProvider>(context);

    return Container(
      width: double.infinity,
      height: 460.0,
      child: PageView(
        controller: PageController(
          viewportFraction: 0.83
        ),
        children: productos.productos.map((prod) => _Card(prod)).toList(),
      ),
    );
  }
}

class _Card extends StatelessWidget{
  ProductoModel prod;

  _Card(this.prod);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              _FirstSection(prod),
              SizedBox(width: 55.0,),
              _SecondSection(prod)
            ],
          ),
          Positioned(
            top: 90,
            left: 50,
            child: Image(
              image: AssetImage('assets/${prod.url}'),
              width: 160.0,
            ),
          )
        ],
      ),
    );
  }
}

class _FirstSection extends StatelessWidget{
  ProductoModel prod;
  _FirstSection(this.prod);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.batteryFull),
            SizedBox(width: 15.0),
            Text('${prod.bateria}-Hour Battery', style: TextStyle(fontSize: 12.0)),

            SizedBox(width: 30.0),

            Icon(FontAwesomeIcons.wifi, size: 18.0,),
            SizedBox(width: 15.0),
            Text('Wireless', style: TextStyle(fontSize: 12.0))
          ],
        ),
      ),
    );
  }
}

class _SecondSection extends StatelessWidget{
  ProductoModel prod;
  _SecondSection(this.prod);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: size.width * 0.55,
          height: 340.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(prod.color),
                Color(prod.color)
              ]
            )
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(prod.titulo, style: TextStyle(color: Colors.white24, fontSize: 28.0, fontWeight: FontWeight.bold)),
                      Text(prod.subtitulo, style: TextStyle(color: Colors.white24, fontSize: 28.0, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),

              Spacer(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 15.0),
                child: Row(
                  children: <Widget>[
                    Text('Beats Studio 3 Wireless', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(FontAwesomeIcons.heart, size: 15, color: Colors.white,)
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 96.0,
                    child: Center(child: Text('\$${prod.precio}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))
                  ),
                  Container(
                    child: Center(child: Text('Add to bag', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                    height: 45.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 76, 87, 1.0),
                          Color.fromRGBO(255, 46, 59, 1.0)
                        ]
                      )
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}