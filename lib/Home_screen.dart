import 'package:flutter/material.dart';
import 'package:online_shopping_app/Home_page.dart';
import 'package:online_shopping_app/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.backColor,
      body: Home_page() ,
    );
  }
}
