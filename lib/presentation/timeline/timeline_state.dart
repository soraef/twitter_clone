import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone/domain/tweet/tweet.dart';
import 'package:twitter_clone/domain/user/user.dart';

part 'timeline_state.freezed.dart';

@freezed
class TimeLineItemState with _$TimeLineItemState {
  const TimeLineItemState._();
  const factory TimeLineItemState({
    required Tweet tweet,
    required User user,
  }) = _TimeLineItemState;

  bool get hasIcon => user.iconURL != null;
}

class TimeLineState extends Equatable {
  TimeLineState(this._items);

  final List<TimeLineItemState> _items;

  @override
  List<Object?> get props => _items;
}
