import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const Principal());//Aqui inicia y se lanza la aplicación
}
class Principal extends StatelessWidget { // Se crea una clase que hereda de StatelessWidget para crear un Widget sin stado
  const Principal({super.key}); //Constructor de la clase Principal

  @override //se sobreescribre el metodo build de la clase padre para generar la interfaz de usuario
  Widget build(BuildContext context) {
    //Se retorna un Widget en nuestro caso MaterialApp
    return const MaterialApp(
      title: 'Widgets basicos Flutter',
      home: Columm(
      children: [
        Text("Lenguajes de Programacion"),
        
        ]
      ),
    );
  }
}