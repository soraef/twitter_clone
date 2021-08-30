import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/domain/tweet/tweet.dart';

final tweetRepositoryProvider = Provider((ref) => TweetRepository());

class TweetRepository {
  /// [time]より新しいTweetを取得する
  Future<List<Tweet>> fetchOrderByCreatedAt(DateTime time) async {
    final snapshot = await FirebaseFirestore.instance
        .collection("tweets")
        .where("createdAt", isGreaterThan: Timestamp.fromDate(time))
        .orderBy("createdAt")
        .get();

    final tweet = snapshot.docs
        .where((data) => data.exists)
        .map((data) => Tweet.fromJson(data.data()))
        .toList();

    return tweet;
  }

  Future<List<Tweet>> loadNewTweet() async {
    return [];
  }

  Future<void> save(Tweet tweet) async {
    await FirebaseFirestore.instance
        .collection("tweets")
        .doc(tweet.id)
        .set(tweet.toJson());
  }

  Future<void> like(String tweetId, String userId) async {}

  Future<void> reply(String tweetId, String userId) async {}
}
