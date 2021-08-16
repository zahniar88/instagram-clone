import 'package:flutter/material.dart';
import 'package:instagram_clone/models/feed.dart';
import 'package:intl/intl.dart';

class Post extends StatelessWidget {
  Post({Key? key, required this.feed}) : super(key: key);

  final Feed feed;
  NumberFormat _numberFormat =
      NumberFormat.currency(locale: "id", decimalDigits: 0, symbol: "");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    feed.avatar,
                    width: 45,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  feed.username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "assets/icons/dot_horizontal.png",
                  scale: 2.0,
                ),
              ],
            ),
          ),
          Image.asset(feed.image),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/love_outline.png",
                  scale: 1.8,
                ),
                SizedBox(width: 20),
                Image.asset(
                  "assets/icons/comment_outline.png",
                  scale: 1.8,
                ),
                SizedBox(width: 20),
                Image.asset(
                  "assets/icons/share_outline.png",
                  scale: 1.8,
                ),
                Spacer(),
                Image.asset(
                  "assets/icons/bookmark_outline.png",
                  scale: 1.8,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
            child: Text(
              _numberFormat.format(feed.counterLike) + " likes",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
            child: Text.rich(
              TextSpan(
                text: feed.username + " ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: feed.text,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
            child: Text(
              "View all 422 comments",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
