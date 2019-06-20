import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: () {},),
            Spacer(),
            IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: () {},),
            Stack(
              children: <Widget>[
                IconButton(icon: Icon(FontAwesomeIcons.shoppingBag), onPressed: () {},),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red
                  ),
                  height: 20.0,
                  width: 20.0,
                  child: Center(child: Text('1', style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
            IconButton(icon: Icon(FontAwesomeIcons.ellipsisV), onPressed: () {},),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.blue,
              ),  
              
            ),
            SizedBox(width: 15.0,)
          ],
        ),
      );
    }
  }