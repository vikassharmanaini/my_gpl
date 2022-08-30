import 'package:flutter/material.dart';
// import 'package:my_gpl/authentication/login.dart';
import 'package:my_gpl/pages/authentication/login.dart';
import 'package:my_gpl/pages/authentication/signup.dart';
import 'package:my_gpl/utility/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.loginRoute,
      routes: {
        MyRouts.loginRoute: (context) => Login(),
        MyRouts.SignupRoute: (context) => SignUp(),
      },
    );
  }
}
