import 'package:flutter/material.dart';

class DatosGenerales extends StatelessWidget {
  const DatosGenerales({super.key});
  //Estructuras de control

  void edad(int? edad) {
    //Primera estrutura de control

    if (edad != 0 && edad! >= 18 && edad != 32) {
      print('Ya eres mayor de edad ');
    } else if (edad == 32) {
      print('se acabo tu vida viejo');
    } else {
      print('eres menor de edad');
    }
  }

  void imprimeNumeros(numero) {
    // Segunda estructura de control FOR
    for (var i = 0; i < numero; i++) {
      print(i);
    }
  }

  void seleccionandoOpcion(fruta) {
    switch (fruta) {
      case 1:
        print('Jugo');
        break;
      case 2:
        print('Cocktail de frutas');
        break;
      case 'z':
        print('no es nada');
        break;

      default:
        print('solo es una fruta hijo');
    }
  }

  //Tercera estructura de control switch
  //Funcion
  void saludar(String nombre) {
    print('Hola,$nombre');
  }

  @override
  Widget build(BuildContext context) {
    //primera forma
    Persona('Chachito', 6).saludar();
    //Segunda forma
    var persona= Persona('Chahita', 99);
    persona.saludar();
    return const Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}

//Clases y objetos
class Persona {
  String nombre;
  int edad;
  Persona(this.nombre, this.edad);
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad');
  }
}
