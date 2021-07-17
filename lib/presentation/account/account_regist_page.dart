import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/presentation/account/account_regist_controller.dart';

class AccountRegistPage extends StatefulWidget {
  const AccountRegistPage({Key? key}) : super(key: key);

  @override
  _AccountRegistPageState createState() => _AccountRegistPageState();
}

class _AccountRegistPageState extends State<AccountRegistPage> {
  late TextEditingController nameController;
  late TextEditingController profileController;

  @override
  void initState() {
    nameController = TextEditingController();
    profileController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final isValid = ref.watch(
          accountRegistControllerProvider.select((value) => value.isValid),
        );
        final errorMessage = ref.watch(accountRegistControllerProvider
            .select((value) => value.errorMessage));
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 45,
            elevation: 0,
            actions: [
              TextButton(
                onPressed: () {
                  final name = nameController.text;
                  final profile = profileController.text;

                  ref
                      .read(accountRegistControllerProvider)
                      .createAccount(name, profile: profile);
                },
                child: Text(
                  "保存",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: SafeArea(
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text("アカウントを設定しましょう"),
                  ),
                  if (!isValid)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        errorMessage!,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(hintText: "名前 (必須)"),
                  ),
                  TextField(
                    controller: profileController,
                    minLines: 5,
                    maxLines: 10,
                    decoration: InputDecoration(hintText: "プロフィール (任意)"),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
