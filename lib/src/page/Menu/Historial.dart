import 'package:flutter/material.dart';

class Historial extends StatefulWidget {
  const Historial({super.key});

  @override
  State<Historial> createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          //Para titulo de pantalla con flecha hacia atras
          backgroundColor: Colors.teal,
          title: const Center(child: Text('Historial')), //Titulo de pantalla
        ),
        body: SingleChildScrollView(
          //Para realizar scroll

          child: Column(
            children: [
              const Text(
                'Historial',
                style:
                    TextStyle(color: Colors.teal, fontSize: 30 //Tamaño de letra
                        ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200.00,
                      height: 200.00,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(child: Text("Historial ")),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
