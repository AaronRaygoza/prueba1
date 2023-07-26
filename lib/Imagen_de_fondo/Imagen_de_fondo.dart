import 'package:flutter/material.dart';

class ImagenDeFondo extends StatefulWidget {
  @override
  State<ImagenDeFondo> createState() => _ImagenDeFondoState();
}

class _ImagenDeFondoState extends State<ImagenDeFondo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/tod5.jpg.PNG"), fit: BoxFit.cover)),
        child: Center(
          child: Text(
            "Aqui Estoy",
            style: TextStyle(
                color: const Color.fromARGB(255, 231, 106, 106), fontSize: 25),
          ),
        ),
      ),
    );
  }
}