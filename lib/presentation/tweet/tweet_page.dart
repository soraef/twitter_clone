import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/tweet/src/notifier.dart';
import 'package:twitter_clone/presentation/tweet/tweet_page_controller.dart';

class TweetPage extends ConsumerStatefulWidget {
  const TweetPage({Key? key}) : super(key: key);

  @override
  _TweetPageState createState() => _TweetPageState();
}

class _TweetPageState extends ConsumerState<TweetPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        actions: [
          TextButton(
            child: Text(
              "ツイートする",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              final tweetText = controller.text;
              ref.read(tweetPageController).tweet(tweetText);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: controller,
                minLines: 10,
                maxLines: 15,
                decoration: InputDecoration.collapsed(hintText: "いまどうしてる？"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showTweetPage(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (_) => TweetPage(),
  );
}
