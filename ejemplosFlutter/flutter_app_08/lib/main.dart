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
      title: 'Sitios Turísticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turísticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shadowColor: Colors.black,
              color: Colors.blue,
              surfaceTintColor: Colors.grey,
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(' ${sitiosTuristicos[index]}'),
                subtitle: Text('Maravilla # ${index + 1}'),
                leading: const Icon(Icons.add_location_alt_outlined),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Sitio Turistico ${index + 1}"),
                          content: Text(sitiosTuristicos[index]),
                          actions: [
                            TextButton(
                              onPressed: (){
                                Navigator.of (context).pop();
                              }, 
                              child: const Text("Cerrar")),
                          ],
                        );
                      });
                },
              ),
            );
          },
        ),
        //ListView.separated(
        //  itemCount: sitiosTuristicos.length,
        //  separatorBuilder: (BuildContext context, int index) {
        //    return const Divider();
        //  },
        //  itemBuilder: (BuildContext context, int index) {
        //    return ListTile(
        //      title: Text(' ${sitiosTuristicos[index]}'),
        //      subtitle: Text('Maravilla # ${index+1}'),
        //      leading: const Icon(Icons.add_location_alt_outlined),
        //    );
        //  },
        //),
      ),
    );
  }
}

List<String> sitiosTuristicos = [
  'Taj Mahal, India',
  'Gran Muralla China, China',
  'Machu Picchu, Perú',
  'Coliseo Romano, Italia',
  'Estatua de la Libertad, EE.UU.',
  'Torre Eiffel, Francia',
  'Sagrada Familia, España',
  'Pirámides de Giza, Egipto',
  'Monte Fuji, Japón',
  'Islas Maldivas, Maldivas',
  'Santorini, Grecia',
  'Parque Nacional Yellowstone, EE.UU.',
  'Isla de Pascua, Chile',
  'Acrópolis de Atenas, Grecia',
  'Angkor Wat, Camboya',
  'Gran Cañón, EE.UU.',
  'Cataratas del Niágara, Canadá/EE.UU.',
  'Cataratas de Iguazú, Argentina/Brasil',
  'Stonehenge, Reino Unido',
  'Monte Kilimanjaro, Tanzania',
  'Playa de Bondi, Australia',
  'Plaza Roja, Rusia',
  'Castillo de Neuschwanstein, Alemania',
  'Versalles, Francia',
  'Mont Saint-Michel, Francia',
  'Chichen Itzá, México',
  'Tikal, Guatemala',
  'Petra, Jordania',
  'Alhambra, España',
  'Monte Saint-Michel, Francia',
  'Parque Nacional Kruger, Sudáfrica',
  'Palacio de Buckingham, Reino Unido',
  'Torre de Pisa, Italia',
  'Catedral de San Basilio, Rusia',
  'Templo del Cielo, China',
  'Mezquita Azul, Turquía',
  'Ópera de Sídney, Australia',
  'Monte Rushmore, EE.UU.',
  'Museo del Louvre, Francia',
  'Catedral de Notre-Dame, Francia',
  'Bora Bora, Polinesia Francesa',
  'Islas Galápagos, Ecuador',
  'Ciudad Prohibida, China',
  'Lago Titicaca, Bolivia/Perú',
  'Isla de Capri, Italia',
  'Palacio de Potala, Tíbet',
  'Catedral de Florencia, Italia',
  'Ponte Vecchio, Italia',
  'Torre de Londres, Reino Unido',
  'Edimburgo, Escocia',
  'Monte Fitz Roy, Argentina',
  'Venecia, Italia',
  'Lago Baikal, Rusia',
  'Playa de Copacabana, Brasil',
  'Safari en el Serengeti, Tanzania',
  'Casco Viejo de Cartagena, Colombia',
  'Avenue of the Baobabs, Madagascar',
  'Burj Khalifa, Emiratos Árabes Unidos',
  'Palacio de Topkapi, Turquía',
  'Islas Faroe, Dinamarca',
  'Atenas, Grecia',
  'Lisboa, Portugal',
  'Monte Cervino, Suiza/Italia',
  'Zermatt, Suiza',
  'Salto Ángel, Venezuela',
  'Parque Nacional Torres del Paine, Chile',
  'Palacio de Schönbrunn, Austria',
  'Monte Olimpo, Grecia',
  'Río Amazonas, Brasil/Perú/Colombia',
  'Basílica de San Pedro, Ciudad del Vaticano',
  'Castillo de Edimburgo, Escocia',
  'Catedral de Milán, Italia',
  'Campos de Lavanda, Francia',
  'Basilica de Guadalupe, México',
  'Parque Nacional de los Glaciares, Argentina',
  'Panteón, Italia',
  'Baviera, Alemania',
  'Transfagarasan, Rumanía',
  'Puente de Brooklyn, EE.UU.',
  'Reserva de Mana Pools, Zimbabue',
  'Costa de Amalfi, Italia',
  'Museo del Prado, España',
  'Montañas de Dolomitas, Italia',
  'Templo de Luxor, Egipto',
  'Abu Simbel, Egipto',
  'Templo de Borobudur, Indonesia',
  'Castillo de Bran, Rumanía',
  'Isla de Skye, Escocia',
  'Santuario de Las Lajas, Colombia',
  'Parque Nacional Everglades, EE.UU.',
  'Montañas Rocosas, Canadá/EE.UU.',
  'Himalayas, Nepal/India/Tíbet',
  'Palacio Real de Madrid, España',
  'Museo Británico, Reino Unido',
  'Lago Louise, Canadá',
  'Montaña Arcoíris, Perú',
  'Parque Nacional Banff, Canadá',
  'Cuevas de Waitomo, Nueva Zelanda',
  'Bavaro Beach, República Dominicana'
];
