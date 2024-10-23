import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myHome());
}
class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabajo con Grids'),
          backgroundColor: const Color.fromARGB(255, 221, 207, 81) ,
          foregroundColor: const Color.fromARGB(255, 49, 49, 49) ,
          ),
          body: Container(
            color: const Color.fromARGB(255, 247, 177, 73),
            child: GridView.count(
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
              crossAxisCount: 4,
              children: const[
                Card(
                  child: Column(
                    children: [
                      Text('Tarjeta 1'),
                      Text('Subeme a la radio'),
                      Text('Eta mi cancio'),
                      Icon(Icons.add_comment),
                    ],
                  ),
                ),
                Card(
                  child: Text('Tarjeta 2'),
                ),
                Card(
                  child: Text('Tarjeta 3'),
                ),
                Card(
                  child: Text('Tarjeta 4'),
                ),
                Card(
                  child: Text('Tarjeta 5'),
                ),
                Card(
                  child: Text('Tarjeta 6'),
                ),
                Card(
                  child: Text('Tarjeta 7'),
                ),
                Card(
                  child: Text('Tarjeta 8'),
                ),
                Card(
                  child: Text('Tarjeta 9'),
                ),
                Card(
                  child: Text('Tarjeta 10'),
                ),
              ],
            ),
          ),
      ),
    );
  }
}