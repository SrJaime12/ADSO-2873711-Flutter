import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Sitios Turisticos"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sitios Turisticos"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text("La Gran Muralla China"),
                Text("La torre Eiffel"),
                Text("Sao pablo"),
                Text("Berga"),
                Text("Chipre"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
