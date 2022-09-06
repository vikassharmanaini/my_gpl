import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/widgets/library-bottom-nav.dart';

import '../../widgets/librarytitle.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  String Title = "Add New";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LibTitle(title: Title),
        
      ],
    );
  }
}
