import 'package:flutter/material.dart';
// import 'twitch.dart';
// import 'login.dart';
import 'something_funky.dart';
// import 'dee.dart';
// import 'when_log_is_not_mandatory.dart';
// import 'remember_uber.dart';
// import 'parallel_login_signup.dart';
// import 'easy_peasy.dart';



void main() => runApp(Twitch());

class Twitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: TwitchLogin(),
      // home: Login(),
      home: SomethingFunky(),
      // home: Dee(),
      // home: WhenLogIs(),
      // home: RememberUber(),
      // home: ParallelLogin(),
      // home: EasyPeasy(),

      title: 'Login Screens',
    );
  }
}
