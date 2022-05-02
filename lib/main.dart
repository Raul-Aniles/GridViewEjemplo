import 'package:flutter/material.dart';
import 'package:aniles/gridview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ej. Grid View', //Pestana en web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.dark,
        ), // Es el tema general global
        home: const MyHomePage());
  }
} // Widget sin estado
