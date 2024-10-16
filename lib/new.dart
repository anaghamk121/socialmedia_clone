// import 'package:flutter/material.dart';
// import 'dart:math';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Social Media Feed Clone',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//       ),
//       home: FeedScreen(),
//     );
//   }
// }
//
// class Post {
//   final String imageUrl;
//   final String text;
//   int likes;
//
//   Post({required this.imageUrl, required this.text, this.likes = 0});
// }
//
// class FeedScreen extends StatefulWidget {
//   @override
//   _FeedScreenState createState() => _FeedScreenState();
// }
//
// class _FeedScreenState extends State<FeedScreen> {
//   List<Post> posts = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchPosts();
//   }
//
//   Future<void> _fetchPosts() async {
//     await Future.delayed(const Duration(seconds: 2));
//
//     setState(() {
//       posts = List.generate(
//         10,
//             (index) => Post(
//           imageUrl: 'https://picsum.photos/500/300?random=$index',
//           text: 'This is post number ${index + 1}',
//           likes: Random().nextInt(100),
//         ),
//       );
//     });
//   }
//
//   Future<void> _refreshFeed() async {
//     await _fetchPosts();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Social Media Feed'),
//       ),
//       body: RefreshIndicator(
//         onRefresh: _refreshFeed,
//         child: ListView.builder(
//           itemCount: posts.length,
//           itemBuilder: (context, index) {
//             return PostWidget(
//               post: posts[index],
//               onLikePressed: () {
//                 setState(() {
//                   posts[index].likes += 1;
//                 });
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class PostWidget extends StatelessWidget {
//   final Post post;
//   final VoidCallback onLikePressed;
//
//   PostWidget({required this.post, required this.onLikePressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(post.imageUrl),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(post.text),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton.icon(
//                 icon: Icon(Icons.thumb_up),
//                 label: Text('${post.likes} Likes'),
//                 onPressed: onLikePressed,
//               ),
//               IconButton(
//                 icon: Icon(Icons.share),
//                 onPressed: () {
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
