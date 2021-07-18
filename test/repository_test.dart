import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';

void main() {
  test("user repository test", () {
    final t = Tweet.create("hoge", "sss");
    final hoge = t.toJson()["createdAt"];
  });
}
