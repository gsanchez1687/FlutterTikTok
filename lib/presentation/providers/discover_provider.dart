//Esta vista sirve para cargar los videos que estan almacenados en asssets/videos

import 'package:flutter/material.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/infrastructure/models/local_video_model.dart';
import 'package:tik_tok/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();
    videos.addAll(newVideos);
    isLoading = false;
  }

  notifyListeners();

}