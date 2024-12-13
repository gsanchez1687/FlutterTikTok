import 'package:flutter/material.dart';
import 'package:tik_tok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed:(){} , icon: Icon(Icons.favorite_border_outlined, color: Colors.red, size: 30,)),
      ],
    );
  }
}