import 'package:flutter/material.dart';

class Consultas extends StatefulWidget {
  const Consultas({Key? key}) : super(key: key);

  @override
  State<Consultas> createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Nueva Consulta'), // Título del AppBar
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar Bodega...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (value) {
                      // Acción cuando cambia el texto de búsqueda
                    },
                  ),
                ),
                // Aquí iría el resto del contenido de la pantalla
              ],
            ),
          ),
        ),
      ),
    );
  }
}
