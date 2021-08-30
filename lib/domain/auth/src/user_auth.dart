class UserAuth {
  final String? uid;

  UserAuth({
    required this.uid,
  });

  factory UserAuth.none() => UserAuth(uid: null);
  bool get isSignIn => uid != null;
}
