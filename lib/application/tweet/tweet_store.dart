import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/store/store.dart';

import '../../domain/tweet/src/tweets.dart';

final tweetStoreProvider = StateNotifierProvider<TweetStore, Tweets>(
  (ref) => TweetStore(),
);

class TweetStore extends Store<Tweets> {
  TweetStore() : super(Tweets.empty());
}
