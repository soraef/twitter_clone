import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone/application/core/json/timestamp/timestamp.dart';
import 'package:uuid/uuid.dart';

part 'tweet.freezed.dart';
part 'tweet.g.dart';

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
    @JsonKey(
      fromJson: dateFromTimestampValue,
      toJson: timestampFromDateValue,
    )
        required DateTime createdAt,
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
      createdAt: DateTime.now(),
    );
  }

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);

  factory Tweet.create(
    String userId,
    String text,
  ) {
    return Tweet(
      id: Uuid().v4(),
      userId: userId,
      text: text,
      paretnTweetId: null,
      likedUserIds: {},
      reTweetUserIds: {},
      createdAt: DateTime.now(),
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
