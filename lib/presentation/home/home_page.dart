import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:twitter_clone/application/auth/auth_service.dart';
import 'package:twitter_clone/application/tweet/tweet_service.dart';
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
    ref.read(tweetServiceProvider).load();
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
                ref.read(authServiceProvider).signOut();
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
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
