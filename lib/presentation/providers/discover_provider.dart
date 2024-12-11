//Esta vista sirve para cargar los videos que estan almacenados en asssets/videos

import 'package:flutter/material.dart';
import 'package:tik_tok/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    //cargar videos
  }

  notifyListeners();

}