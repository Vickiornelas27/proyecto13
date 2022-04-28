import 'package:flutter/material.dart';
import 'package:proyecto13/completo.dart';
import 'package:proyecto13/lista.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

final listaDatos = lista;

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Base de datos"),
      ),
      body: ListView.builder(
          itemCount: listaDatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => completo(index)));
              },
              title: Text(listaDatos[index].nombreCompleto),
              leading: CircleAvatar(
                child: Text(listaDatos[index].nombreCompleto.substring(0, 1)),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}
