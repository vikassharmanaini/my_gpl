import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/library-bottom-nav.dart';
import '../../widgets/librarytitle.dart';

class BookMarks extends StatefulWidget {
  const BookMarks({Key? key}) : super(key: key);

  @override
  State<BookMarks> createState() => _BookMarksState();
}

class _BookMarksState extends State<BookMarks> {
  String Title = "My BookMarks";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LibTitle(title: Title)],
    );
  }
}
