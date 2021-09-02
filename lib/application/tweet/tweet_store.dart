import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/event.dart';
import 'package:twitter_clone/domain/tweet/src/tweet.dart';
import 'package:twitter_clone/infrastructure/tweet/tweet_repository.dart';

import '../../domain/tweet/src/tweets.dart';

final tweetStoreProvider = StateNotifierProvider<TweetStore, Tweets>(
  (ref) => TweetStore(ref.read),
);

class TweetStore extends StateNotifier<Tweets> {
  TweetStore(this._read) : super(Tweets.empty());

  late Tweets tweets;
  DateTime currentLoadDate = DateTime(2021, 7, 18);

  final Reader _read;

  TweetRepository get _repository => _read(tweetRepositoryProvider);
  EventBus get _bus => _read(eventBusProvider);

  void load() async {
    final tweetList = await _repository.fetchOrderByCreatedAt(currentLoadDate);
    tweets = state.putAll(tweetList);
    tweetList.map((tweet) => TweetAdded(tweet)).forEach(_bus.fire);
    state = tweets;
  }

  Future<void> tweet(String userId, String text) async {
    final tweet = Tweet.create(userId, text);
    await _repository.save(tweet);
    state = state.put(tweet);
    _bus.fire(TweetAdded(tweet));
  }
}
