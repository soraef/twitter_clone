import 'package:twitter_clone/application/tweet/src/model/tweet.dart';

class TweetRepository {
  Future<List<Tweet>> loadTweet() async {
    return [];
  }

  Future<List<Tweet>> loadNewTweet() async {
    return [];
  }

  Future<void> tweet(Tweet tweet) async {}

  Future<void> like(String tweetId, String userId) async {}

  Future<void> reply(String tweetId, String userId) async {}
}
