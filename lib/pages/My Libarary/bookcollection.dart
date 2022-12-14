import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/widgets/libwidgets/mybooks.dart';

import '../../widgets/library-bottom-nav.dart';
import '../../widgets/librarytitle.dart';

class BookCollection extends StatefulWidget {
  const BookCollection({Key? key}) : super(key: key);

  @override
  State<BookCollection> createState() => _BookCollectionState();
}

class _BookCollectionState extends State<BookCollection> {
  String Title = "My Books";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LibTitle(title: Title),
          MyBookscol(),
          Learnedshow(),
        ],
      ),
    );
  }
}
