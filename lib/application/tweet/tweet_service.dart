import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/user/user_store.dart';
import 'package:twitter_clone/domain/tweet/src/tweet.dart';
import 'package:twitter_clone/domain/user/src/user.dart';
import 'package:twitter_clone/infrastructure/tweet/tweet_repository.dart';
import 'package:twitter_clone/infrastructure/user/user_repository.dart';

import 'tweet_store.dart';

final tweetServiceProvider = Provider((ref) => TweetServcie(ref.read));

class TweetServcie {
  TweetServcie(this._read);

  final DateTime currentLoadDate = DateTime(2021, 7, 18);

  final Reader _read;

  TweetRepository get tweetRepository => _read(tweetRepositoryProvider);
  UserRepository get _userRepository => _read(userRepositoryProvider);
  TweetStore get _tweetStore => _read(tweetStoreProvider.notifier);
  UserStore get _userStore => _read(userStoreProvider.notifier);

  void load() async {
    final tweetList =
        await tweetRepository.fetchOrderByCreatedAt(currentLoadDate);

    final userIds = tweetList.map((tweet) => tweet.userId).toList();
    final fetchedUsers =
        (await _userRepository.fetchAll(userIds)).whereType<User>().toList();

    _userStore.effect((users) => users.putAll(fetchedUsers));
    _tweetStore.effect((tweets) => tweets.putAll(tweetList));
  }

  Future<void> tweet(String userId, String text) async {
    final tweet = Tweet.create(userId, text);
    await tweetRepository.save(tweet);
    _tweetStore.effect((tweets) => tweets.put(tweet));
  }
}
