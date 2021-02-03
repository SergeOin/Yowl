import 'package:flutter/material.dart';
import 'package:yowl/models/Models.dart';

class Comment {
  final User user;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int dislikes;
  final int comments;

  const Comment({
    @required this.user,
    @required this.timeAgo,
    @required this.imageUrl,
    @required this.likes,
    @required this.dislikes,
    @required this.comments,
  });
}