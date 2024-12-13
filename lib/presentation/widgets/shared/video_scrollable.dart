
import 'package:flutter/material.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/presentation/widgets/shared/video_buttons.dart';

class VideoScrollable extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollable({super.key, required this.videos});
  

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            Positioned(
              bottom: 40,
              right: 20,
              child:IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color: Colors.red, size: 30,),),
            ),
          ],
        );
      },
    );
  }
}