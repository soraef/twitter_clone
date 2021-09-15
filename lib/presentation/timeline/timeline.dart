import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/tweet/tweet_store.dart';
import 'package:twitter_clone/application/user/user_store.dart';
// import 'package:twitter_clone/presentation/timeline/timeline_controller.dart';
import 'package:twitter_clone/presentation/timeline/timeline_item.dart';

class TimeLine extends ConsumerWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userStoreProvider); // UserStoreのUsersを取得
    final tweets = ref.watch(tweetStoreProvider.select(
      (value) => value.filterExistUser(users), // TweetStoreからユーザーが存在するTweetsを取得
    ));

    return ListView.separated(
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets.values.toList()[index];
        final user = users.findById(tweet.userId)!; // filterしているのでuserは存在するはず
        return TimeLineItem(
          user: user,
          tweet: tweet,
        ); // UserとTweetからタイムラインを描画するWidget
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
