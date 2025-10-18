import 'package:flutter/material.dart';
import 'package:flutter_fitness/pages/home.dart';
import 'package:flutter_fitness/services/social_post.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Fitness",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Social App'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            SocialPost(
              userName: 'Alex Chen',
              userImage: 'https://i.pravatar.cc/150?img=3',
              postText:
                  'Just built my first Flutter app! The widget system is amazing!',
            ),
            SocialPost(
              userName: 'Maria Garcia',
              userImage: 'https://i.pravatar.cc/150?img=5',
              postText: 'Learning state management in Flutter. So powerful!',
            ),
          ],
        ),
      ),
    );
  }
}
