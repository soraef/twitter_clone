import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/presentation/account/account_switch.dart';
import 'package:twitter_clone/presentation/auth/auth_page_controller.dart';

class AuthSwitch extends ConsumerWidget {
  const AuthSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSingIn = ref.watch(
      authNotifierProvider.select((value) => value.userAuth.isSignIn),
    );

    if (isSingIn) {
      return AccountSwitch();
    } else {
      return AuthPage();
    }
  }
}

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final controller = ref.read(authPageControllerProvider.notifier);
        final state = ref.watch(
          authPageControllerProvider.select((value) => value.state),
        );

        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    // Spacer(),
                    Container(
                      width: 200,
                      height: 150,
                      child: Image.asset(
                        "images/twitter_top.png",
                      ),
                    ),
                    // Spacer(),
                    if (state.isFailed)
                      Text(
                        state.errorMessage,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(hintText: "E-mail"),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8)),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8)),
                    ElevatedButton(
                      child: state.map(
                        signIn: (_) => Text("Sign In"),
                        signUp: (_) => Text("Sign Up"),
                      ),
                      onPressed: () {
                        final email = _emailController.text;
                        final password = _passwordController.text;

                        state.when(
                          signIn: (_, __) => controller.signIn(email, password),
                          signUp: (_, __) => controller.signUp(email, password),
                        );
                      },
                    ),
                    // Spacer(),
                    TextButton(
                      onPressed: () => controller.togglePage(),
                      child: state.map(
                        signIn: (_) => Text("未登録の方はこちら"),
                        signUp: (_) => Text("アカウントをお持ちの方はこちら"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
