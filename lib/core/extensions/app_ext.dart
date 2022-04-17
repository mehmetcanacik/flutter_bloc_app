import 'dart:developer' as devtools show log;

import 'package:bloc_app/core/widgets/user_list_tile.dart';
import 'package:flutter/material.dart';

const _url1 = 'http://127.0.0.1:5500/api/users1.json';
const _url2 = 'http://127.0.0.1:5500/api/users2.json';

enum UserUrl { users1, users2 }

extension UserUrlX on UserUrl {
  String get urlToString {
    switch (this) {
      case UserUrl.users1:
        return _url1;
      case UserUrl.users2:
        return _url2;
    }
  }
}

extension IsEqualOrIgnoring<T> on Iterable<T> {
  bool isEqualOrIgnoring(Iterable<T> other) {
    return length == other.length &&
        {...this}.intersection({...other}).length == length;
  }
}

extension Log on Object {
  void log() => devtools.log(toString());
}

extension SubScript<T> on Iterable<T> {
  T? operator [](int atIndex) => length > atIndex ? elementAt(atIndex) : null;
}

extension ItemToList<T> on Iterable<T> {
  Widget itemToWidget() => UserListTile(users: this);
}
