import 'package:flutter/material.dart';
import 'package:yowl/config/Palette.dart';
import 'package:yowl/models/Models.dart';

class CommentScreen extends StatelessWidget {
  final Comment comment;

  const CommentScreen({
    Key key,
    @required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Palette.YowlBlue,
    );
  }
}
