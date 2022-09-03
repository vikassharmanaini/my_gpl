import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/My Libarary/Addbook.dart';
import '../pages/My Libarary/bookcollection.dart';
import '../pages/My Libarary/bookmarks.dart';
import '../pages/My Libarary/dashboard.dart';
import 'app-drawer.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  void _ontapped(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  int _selectedIndex = 0;

  static Set<Widget> bodys = {
    LibraryDash(),
    BookCollection(),
    AddBook(),
    BookMarks()
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: const Text(
            "My Library",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        drawer: const AppDrawer(
          tilenumber: 2,
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.black,
          
          items: [
            TabItem(icon: Icons.dashboard_customize_outlined, title: 'Home'),
            TabItem(
                icon: Icons.collections_bookmark_outlined, title: 'Collection'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.bookmark_outline_rounded, title: 'Marks'),
          ],
          initialActiveIndex: _selectedIndex, //optional, default as 0
          onTap: _ontapped,
        ),
        body: bodys.elementAt(_selectedIndex));
  }
}
