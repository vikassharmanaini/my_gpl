import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utility/Book.dart';

class MyBookscol extends StatefulWidget {
  const MyBookscol({super.key});

  @override
  State<MyBookscol> createState() => _MyBookscolState();
}

class _MyBookscolState extends State<MyBookscol> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  "My Collections",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MyBookList()
            ],
          ),
        ),
      ),
    );
  }
}

class MyBookList extends StatefulWidget {
  const MyBookList({super.key});

  @override
  State<MyBookList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyBookList> {
  @override
  Widget build(BuildContext context) {
    List<Book> booklist = [
      Book(Bookid: "466", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "4646", Bookname: "funbook"),
      Book(Bookid: "4546", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "4646", Bookname: "funbook"),
      Book(Bookid: "410", Bookname: "funbook"),
    ];
    _openbook(String bookid) {
      print(bookid);
    }

    return Container(
      height: 400,
      child: ListView.builder(
        padding: EdgeInsets.all(2),
        itemCount: booklist.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return ListTile(
              title: Text("Name"),
              leading: Text("Id"),
              trailing: Text("Open"),
              onTap: _openbook(booklist.elementAt(index).Bookid),
            );
          else
            return ListTile(
              title: Text(booklist.elementAt(index).Bookname),
              leading: Text(booklist.elementAt(index).Bookid),
              trailing: GestureDetector(
                child: Icon(Icons.menu_book_rounded),
                onTap: _openbook(booklist.elementAt(index).Bookid),
              ),
            );
        },
      ),
    );
  }
}

class Learnedshow extends StatelessWidget {
  const Learnedshow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  "Learned Book",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Learned()
            ],
          ),
        ),
      ),
    );
  }
}

class Learned extends StatefulWidget {
  const Learned({super.key});

  @override
  State<Learned> createState() => _LearnedState();
}

class _LearnedState extends State<Learned> {
  @override
  Widget build(BuildContext context) {
    List<Book> booklist = [
      Book(Bookid: "466", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "4646", Bookname: "funbook"),
      Book(Bookid: "4546", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "446", Bookname: "funbook"),
      Book(Bookid: "4646", Bookname: "funbook"),
      Book(Bookid: "410", Bookname: "funbook"),
    ];
    _openbook(String bookid) {
      print(bookid);
    }

    return Container(
      height: 300,
      child: ListView.builder(
        padding: EdgeInsets.all(2),
        itemCount: booklist.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return ListTile(
              title: Text("Name"),
              leading: Text("Id"),
              onTap: _openbook(booklist.elementAt(index).Bookid),
            );
          else
            return ListTile(
              title: Text(booklist.elementAt(index).Bookname),
              leading: Text(booklist.elementAt(index).Bookid),
              trailing: Icon(Icons.coffee_rounded),
              onTap: _openbook(booklist.elementAt(index).Bookid),
            );
        },
      ),
    );
  }
}
