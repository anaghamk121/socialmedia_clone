import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  final VoidCallback onLikePressed;

  const PostWidget({required this.post, required this.onLikePressed});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(widget.post.imageUrl),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(widget.post.text),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                  widget.onLikePressed();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
