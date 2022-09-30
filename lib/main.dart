import 'package:flutter/material.dart';
import 'package:online_shopping_app/Home_page.dart';
import 'package:online_shopping_app/modals/details_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Home_page(),
        "details_page": (context) => details_page(),

      },
    ),
  );
}
