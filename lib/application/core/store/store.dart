import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef Updater<T> = T Function(T prev);

class Store<T> extends StateNotifier<T> {
  Store(T state) : super(state);

  void effect(Updater<T> updater) {
    state = updater(state);
  }
}
