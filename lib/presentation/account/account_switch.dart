import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/src/notifier.dart';
import 'package:twitter_clone/presentation/account/account_regist_page.dart';

class AccountSwitch extends ConsumerWidget {
  const AccountSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(
      accountNotifierProvider.select((value) => value.account),
    );
    if (account != null) {
      return Scaffold(
        body: Center(
          child: Text("ホーム"),
        ),
      );
    }
    return AccountRegistPage();
  }
}
