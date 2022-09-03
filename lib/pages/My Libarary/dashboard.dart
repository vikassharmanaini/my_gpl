import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/widgets/app-drawer.dart';
import 'package:my_gpl/widgets/libchart.dart';
import 'package:my_gpl/widgets/library-bottom-nav.dart';
import 'package:my_gpl/widgets/librarytitle.dart';

class LibraryDash extends StatefulWidget {
  const LibraryDash({Key? key}) : super(key: key);

  @override
  State<LibraryDash> createState() => _LibraryDashState();
}

class _LibraryDashState extends State<LibraryDash> {
  String Title = "Home";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LibTitle(title: Title),
        LibperChart(),
      ],
    );
  }
}
