import 'package:flutter/material.dart';
import 'package:my_gpl/pages/My%20Collage/myCollage.dart';
import 'package:my_gpl/pages/My%20Libarary/Addbook.dart';
import 'package:my_gpl/pages/My%20Libarary/bookcollection.dart';
import 'package:my_gpl/pages/My%20Libarary/bookmarks.dart';
import 'package:my_gpl/pages/My%20Libarary/dashboard.dart';
import 'package:my_gpl/pages/authentication/login.dart';
import 'package:my_gpl/pages/authentication/signup.dart';
import 'package:my_gpl/utility/routs.dart';
import 'package:my_gpl/widgets/library-bottom-nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: TextTheme(
          
        ),
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.loginRoute,
      routes: {
        MyRouts.loginRoute: (context) => Login(),
        MyRouts.SignupRoute: (context) => SignUp(),
        MyRouts.College: (context) => MyCollage(),
        MyRouts.librarydash: (context) => Library(),
      },
    );
  }
}
