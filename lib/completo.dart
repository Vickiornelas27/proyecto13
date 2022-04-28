import 'package:flutter/material.dart';
import 'package:proyecto13/lista.dart';

final listaDatos = lista;

class completo extends StatelessWidget {
  int i;

  completo(this.i, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("informacion"),
      ),
      body: Center(
        child: ListTile(
          title: Row(children: const [Text("ESTUDIANTE")]),
          subtitle: Column(
            children: [
              Row(children: [
                const Text("Nombre: "),
                Text(
                  lista[i].nombreCompleto,
                ),
              ]),
              Row(children: [
                const Text("Carrera: "),
                Text(lista[i].carrera),
              ]),
              Row(children: [
                const Text("Matricula: "),
                Text(lista[i].matricula),
              ]),
              Row(children: [
                const Text("Semestre: "),
                Text(lista[i].semestre),
              ]),
              Row(children: [
                const Text("Telefono: "),
                Text(lista[i].telefono),
              ]),
              Row(children: [
                const Text("Correo: "),
                Text(lista[i].correo),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
