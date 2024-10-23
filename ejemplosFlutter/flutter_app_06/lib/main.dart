import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myHome());
}

class myHome extends StatelessWidget {
  const myHome({super.key});

  get images => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'informacion Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Informacion Personal")),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/219/219988.png"),
              ),
              Image(
                image: NetworkImage("images/DevilTriggerN.jpg"),
                height: 300,
              ),
              ListTile(
                title: Text("Jaime Andres"),
                subtitle: Text("Nombre(s)"),
                leading: Icon(Icons.account_circle_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("Calle Salazar"),
                subtitle: Text("Apellido(s)"),
                leading: Icon(Icons.account_circle_rounded),
              ),
              Divider(),
              ListTile(
                title: Text("311-398-5128"),
                subtitle: Text("Telefono"),
                leading: Icon(Icons.call),
              ),
              Divider(),
              ListTile(
                title: Text("SENA - CPIC"),
                subtitle: Text("Empresa"),
                leading: Icon(Icons.business_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("C11 45n 6-43"),
                subtitle: Text("Direccion"),
                leading: Icon(Icons.business_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("17001"),
                subtitle: Text("Codigo Postal"),
                leading: Icon(Icons.business_outlined),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
