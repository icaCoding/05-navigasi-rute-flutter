import 'package:flutter/material.dart';
import 'package:praktikum5/pages/home_page.dart';
import 'package:praktikum5/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}