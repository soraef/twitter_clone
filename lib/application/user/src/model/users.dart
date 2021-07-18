import 'package:equatable/equatable.dart';
import 'package:twitter_clone/application/user/src/model/user.dart';

class Users extends Equatable {
  final Map<String, User> _items;
  Users(this._items);

  factory Users.fromIterable(Iterable<User> entities) {
    return Users({for (final entity in entities) entity.id: entity});
  }
  factory Users.empty() {
    return Users({});
  }

  Iterable<User> get values => _items.values;
  Iterable<String> get keys => _items.keys;
  int get length => _items.length;

  User? findById(String id) {
    return _items[id];
  }

  bool exist(String id) {
    return findById(id) != null;
  }

  Iterable<User> findByIds(Iterable<String> ids) {
    return values.where((entity) => ids.contains(entity.id));
  }

  Users put(User item) {
    return Users({..._items, item.id: item});
  }

  Users remove(String id) {
    return Users({..._items}..removeWhere((key, value) => key == id));
  }

  @override
  List<Object?> get props => values.toList();
}
