//Esta visa es la pagina de descubrimiento

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok/presentation/providers/discover_provider.dart';
import 'package:tik_tok/presentation/widgets/shared/video_scrollable.dart';

class DisvoverScreean extends StatelessWidget {
  const DisvoverScreean({super.key});

  @override
  Widget build(BuildContext context) {

  final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
      body: discoverProvider.initialLoading != null ? const Center(child: CircularProgressIndicator()) : VideoScrollable( videos: discoverProvider.videos, ),
    );
  }
}