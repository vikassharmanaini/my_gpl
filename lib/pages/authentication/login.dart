import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/pages/authentication/signup.dart';
import 'package:my_gpl/utility/routs.dart';
import 'package:my_gpl/widgets/clippeed.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        child: Column(
          children: [
            Opacity(
              opacity: 1,
              child: ClipPath(
                clipper: wavecliper(),
                child: Container(
                  color: Colors.black,
                  height: 100,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: const Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                cursorColor: Colors.blue,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email or Enroll Number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRouts.SignupRoute);
                      },
                      child: const Text(
                        "I want Admission!",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    elevation: 15.0,
                    tooltip: "Log in",
                    child: Icon(Icons.login_rounded, semanticLabel: "Log in"),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
