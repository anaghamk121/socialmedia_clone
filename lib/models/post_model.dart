class Post {
  final String imageUrl;
  final String text;
  int likes;
  int dislikes;
  Post({required this.imageUrl, required this.text, this.likes = 0,
  this.dislikes =0});
}