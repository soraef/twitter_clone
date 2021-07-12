import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet.freezed.dart';

@freezed
class Tweet with _$Tweet {
  const Tweet._();

  const factory Tweet({
    required String id,
    required String userId,
    required String text,
    required String? paretnTweetId,
    required Set<String> likedUserIds,
    required Set<String> reTweetUserIds,
  }) = _Tweet;

  factory Tweet.reply(
    String id,
    String userId,
    String text,
    String replyTweetId,
  ) {
    return Tweet(
      id: id,
      userId: userId,
      text: text,
      paretnTweetId: replyTweetId,
      likedUserIds: {},
      reTweetUserIds: {},
    );
  }

  factory Tweet.create(
    String id,
    String userId,
    String text,
  ) {
    return Tweet(
      id: id,
      userId: userId,
      text: text,
      paretnTweetId: null,
      likedUserIds: {},
      reTweetUserIds: {},
    );
  }

  Tweet like(String userId) {
    return copyWith(
      likedUserIds: {...likedUserIds, userId},
    );
  }

  Tweet retweet(String userId) {
    return copyWith(
      reTweetUserIds: {...reTweetUserIds, userId},
    );
  }
}
