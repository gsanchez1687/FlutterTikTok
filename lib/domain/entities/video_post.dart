
// Representan el objeto clave de tu dominio (por ejemplo, un usuario, un producto, una orden, en este caso un video).
class VideoPost{

  final String caption;
  final String videoUrl;
  final String thumbnailUrl;
  final int likes;
  final int comments;
  final int shares;
  final int views;

  VideoPost({required this.caption, required this.videoUrl, required this.thumbnailUrl, this.likes = 0, required this.comments, required this.shares, this.views = 0});

}