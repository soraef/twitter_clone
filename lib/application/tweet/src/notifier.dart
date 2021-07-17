import 'package:flutter/material.dart';
import 'package:twitter_clone/application/tweet/src/model/tweet.dart';

import 'model/tweets.dart';

class TweetNotifier extends ChangeNotifier {
  late Tweets tweets;

  TweetNotifier() {
    tweets = Tweets.empty();
  }

  void loadProgress() {
    //firestoreのページネーション機能的なやつで少しずつ読み込む
  }

  void like(String tweetId, String userId) {
    final target = tweets.findById(tweetId);

    if (target == null) {
      throw "tweetが存在しません";
    }

    tweets = tweets.put(target.like(userId));
    notifyListeners();
  }

  void retweet(String tweetId, String userId) {
    final target = tweets.findById(tweetId);

    if (target == null) {
      throw "tweetが存在しません";
    }

    tweets = tweets.put(target.retweet(userId));
    notifyListeners();
  }

  void reply(String replyTweetId, String userId, String text) {
    final replyTweet = Tweet.reply("test", userId, text, replyTweetId);
    tweets = tweets.put(replyTweet);
    notifyListeners();
  }

  void tweet(String userId, String text) {
    final tweet = Tweet.create("test", userId, text);
    tweets = tweets.put(tweet);
    notifyListeners();
  }
}
