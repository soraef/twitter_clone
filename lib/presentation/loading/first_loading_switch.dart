import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/presentation/account/account_regist_page.dart';
import 'package:twitter_clone/presentation/auth/auth_page.dart';
import 'package:twitter_clone/presentation/home/home_page.dart';
import 'package:twitter_clone/presentation/loading/first_loading_controller.dart';

class FirstLoadingSwitch extends ConsumerWidget {
  const FirstLoadingSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(firstLoadingControllerProvider);
    switch (state) {
      case FirstLoadingState.loading:
        return Container();
      case FirstLoadingState.noSignIn:
        return AuthPage();
      case FirstLoadingState.noAccount:
        return AccountRegistPage();
      case FirstLoadingState.completed:
        return HomePage();
    }
  }
}
