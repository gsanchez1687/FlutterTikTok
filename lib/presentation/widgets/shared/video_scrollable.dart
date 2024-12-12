
import 'package:flutter/material.dart';
import 'package:tik_tok/domain/entities/video_post.dart';

class VideoScrollable extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollable({super.key, required this.videos});
  

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
      ],
    );
  }
}