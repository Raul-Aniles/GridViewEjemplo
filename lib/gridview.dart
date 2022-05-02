import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);
  @override
  _MiPaginaInicial createState() => _MiPaginaInicial();
} // Widget con estado

class _MiPaginaInicial extends State<PaginaInicial> {
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
        appBar: AppBar(title: const Text("Listado de articulos"), backgroundColor: Colors.amber),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (buildContext, index) {
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
