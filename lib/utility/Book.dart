import 'package:flutter/foundation.dart';

class Book {
  String Bookid;
  String Bookname="";
  int Page=0;
  Book(
    {
    required this.Bookid,
    this.Bookname ="",
    this.Page = 0,
  });
}
