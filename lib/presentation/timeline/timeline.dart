import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/presentation/timeline/timeline_controller.dart';
import 'package:twitter_clone/presentation/timeline/timeline_item.dart';

class TimeLine extends ConsumerWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadedTweet = ref.watch(loadedTweetProvider);

    return ListView.separated(
      itemCount: loadedTweet.length,
      itemBuilder: (context, index) {
        return TimeLineItem(
          user: loadedTweet[index].user,
          tweet: loadedTweet[index].tweet,
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
