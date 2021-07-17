import 'package:equatable/equatable.dart';

import 'tweet.dart';

class Tweets extends Equatable {
  final Map<String, Tweet> _items;
  Tweets(this._items);

  factory Tweets.fromIterable(Iterable<Tweet> entities) {
    return Tweets({for (final entity in entities) entity.id: entity});
  }
  factory Tweets.empty() {
    return Tweets({});
  }

  Iterable<Tweet> get values => _items.values;
  Iterable<String> get keys => _items.keys;
  int get length => _items.length;

  Tweet? findById(String id) {
    return _items[id];
  }

  Iterable<Tweet> findByIds(Iterable<String> ids) {
    return values.where((entity) => ids.contains(entity.id));
  }

  Tweets put(Tweet item) {
    return Tweets({..._items, item.id: item});
  }

  Tweets remove(String id) {
    return Tweets({..._items}..removeWhere((key, value) => key == id));
  }

  @override
  List<Object?> get props => values.toList();
}
