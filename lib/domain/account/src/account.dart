import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone/domain/user/src/user.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account({
    required String id,
    required String name,
    required String? profile,
    required String? iconURL,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  User toUser() {
    return User(
      id: id,
      name: name,
      profile: profile,
      iconURL: iconURL,
    );
  }
}
