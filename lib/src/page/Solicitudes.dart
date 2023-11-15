import 'package:flutter/material.dart';

class Solicitudes extends StatefulWidget {
  const Solicitudes({Key? key}) : super(key: key);

  @override
  State<Solicitudes> createState() => _SolicitudesState();
}

class _SolicitudesState extends State<Solicitudes> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Nueva Solicitud'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, 
                    ),
                      child: const Text('Consumibles')
                      ),
                  ]
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ingrese Bodega Origen...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (value) {
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ingrese Bodega Destino...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (value) {
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
