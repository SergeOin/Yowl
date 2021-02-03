import 'package:flutter/material.dart';
import 'package:yowl/config/Palette.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height: 800.0,
            color: Palette.YowlBlue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () { Navigator.pushNamed(context, '/');
                  },
                ),
                Row(children: <Widget>[
                  Text('YOWL',
                    style: const TextStyle(
                    color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Lemon Milk',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],),
              ],
            ),
          ),
        ],)
      ],),
    );
  }
}