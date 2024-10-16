import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../widgets/postwidget.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Post> posts = [];

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      posts = List.generate(
        10,
            (index) => Post(
          imageUrl: 'https://picsum.photos/500/300?random=$index',
          text: 'This is post number ${index + 1}',
          likes: Random().nextInt(100),
        ),
      );
    });
  }

  Future<void> _refreshFeed() async {
    await _fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media Feed'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshFeed,
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return PostWidget(
              post: posts[index],
              onLikePressed: () {
                setState(() {
                  posts[index].likes += 1;
                });
              },
            );
          },
        ),
      ),
    );
  }
}