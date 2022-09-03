import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnedBooks extends StatefulWidget {
  const LearnedBooks({super.key});

  @override
  State<LearnedBooks> createState() => _LearnedBooksState();
}

class _LearnedBooksState extends State<LearnedBooks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 270,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  "Top Books",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              ListTile(
                leading: Text("Rank 1"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
              ListTile(
                leading: Text("Rank 2"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
              ListTile(
                leading: Text("Rank 3"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
              ListTile(
                leading: Text("Rank 4"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
              ListTile(
                leading: Text("Rank 5"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
              ListTile(
                leading: Text("Rank 6"),
                title: Text(
                  "Book name",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text("Score:30000"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
