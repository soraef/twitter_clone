import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone/domain/tweet/tweet.dart';

part 'event.freezed.dart';

@freezed
class TweetEvent with _$TweetEvent {
  const factory TweetEvent.added(Tweet tweet) = TweetAdded;
}
