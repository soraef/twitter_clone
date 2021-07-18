import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';
import 'package:twitter_clone/presentation/timeline/timeline.dart';
import 'package:twitter_clone/presentation/tweet/tweet_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    ref.read(tweetNotifierProvider).load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("test"),
            ),
            ListTile(
              title: Text("プロフィール"),
            ),
            ListTile(
              title: Text("サインアウト"),
              onTap: () {
                ref.read(authNotifierProvider).signOut();
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          print("show");
          showMaterialModalBottomSheet(
            context: context,
            expand: true,
            builder: (context) => TweetPage(),
          );
        },
      ),
      body: TimeLine(),
    );
  }
}
