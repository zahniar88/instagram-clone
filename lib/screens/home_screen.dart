import 'package:flutter/material.dart';
import 'package:instagram_clone/components/navigation_bar.dart';
import 'package:instagram_clone/components/post.dart';
import 'package:instagram_clone/components/snapgram_section.dart';
import 'package:instagram_clone/models/feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // snapgram section
            SnapgramSection(),
            for (int i = 0; i < Feed.feeds.length; i++)
              Post(
                feed: Feed.feeds[i],
              ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      toolbarHeight: 70,
      title: Image.asset(
        "assets/icons/instagram.png",
        height: 30,
      ),
      centerTitle: true,
      leading: Image.asset(
        "assets/icons/camera_outline.png",
        scale: 1.7,
      ),
      actions: [
        Image.asset(
          "assets/icons/message_outline.png",
          scale: 1.7,
        ),
      ],
    );
  }
}
