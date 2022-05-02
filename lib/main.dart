import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} // Widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/ferreteria1.jpg",
    "assets/images/ferreteria2.jpg",
    "assets/images/ferreteria3.jpg",
    "assets/images/ferreteria4.jpg",
    "assets/images/ferreteria5.jpg",
    "assets/images/ferreteria6.jpg",
    "assets/images/ferreteria7.jpg",
    "assets/images/ferreteria8.jpg",
  ]; // Lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter GridView"), backgroundColor: Colors.amber),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
