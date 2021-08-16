import 'package:flutter/material.dart';
import 'package:instagram_clone/models/snapgram.dart';

class SnapgramSection extends StatelessWidget {
  const SnapgramSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: Snapgram.snaps.map((snap) {
            int index = Snapgram.snaps.indexOf(snap);

            return Column(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  margin: EdgeInsets.only(left: index > 0 ? 15 : 0),
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          snap.image,
                          width: 65,
                        ),
                      ),
                      if (snap.isUser)
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: Icon(
                            Icons.add_circle_sharp,
                            color: Colors.blue,
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  width: 75,
                  child: Text(
                    snap.username,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
