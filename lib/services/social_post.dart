import 'package:flutter/material.dart';

class SocialPost extends StatefulWidget {
  final String userName;
  final String userImage;
  final String postText;

  const SocialPost({
    super.key,
    required this.userName,
    required this.userImage,
    required this.postText,
  });

  @override
  State<SocialPost> createState() => _SocialPostState();
}

class _SocialPostState extends State<SocialPost> {
  bool _isLiked = false;
  int _likeCount = 0;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(widget.userImage),
                ),
                const SizedBox(width: 12),
                Text(
                  widget.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(), //pushes everything to the sides
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(height: 16),
            //post content
            Text(widget.postText, maxLines: 2),
            const SizedBox(height: 16),

            //engagement button
            Row(
              children: [
                IconButton(
                  onPressed: _toggleLike,
                  icon: Icon(_isLiked ? Icons.favorite : Icons.favorite_border),
                ),
                Text('$_likeCount'),
                const SizedBox(width: 16),
                IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                const Text("Comment"),
                const Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
