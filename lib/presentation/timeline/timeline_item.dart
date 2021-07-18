import 'package:flutter/material.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';
import 'package:twitter_clone/application/user/src/model/user.dart';

class TimeLineItem extends StatelessWidget {
  const TimeLineItem({
    Key? key,
    required this.tweet,
    required this.user,
  }) : super(key: key);

  final Tweet tweet;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("images/user.png"),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  tweet.text,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
