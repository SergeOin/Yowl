import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yowl/config/Palette.dart';
import 'package:yowl/data/data.dart';
import 'package:yowl/models/CommentModel.dart';
import 'package:yowl/views/CommentScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( children: <Widget> [
        Stack(children: <Widget> [
          Container(
            height: 80.0,
            color: Colors.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                iconSize: 30.0,
                color: Palette.YowlBlue,
                onPressed: () { Navigator.pushNamed(context, '/menu');
                },
              ),
              Row(children: <Widget>[
                Text('YOWL',
                  style: const TextStyle(
                    color: Palette.YowlBlue,
                    fontSize: 30.0,
                    fontFamily: 'Lemon Milk',
                  ),
                )
              ],),
              Row(
                children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 20.0,
                  color: Palette.YowlBlue,
                  onPressed: () => {
                    //window.close()
                  },
                ),
              ],)
            ],),
          ),
        ],)
      ],),
    );
  }
}

class ListComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context,index) {
                final Comment comment = comments[index];
                return CommentScreen(comment: comment);
              },
              childCount: comments.length,
            ),
          ),
        ],
      ),
    );
  }
}
