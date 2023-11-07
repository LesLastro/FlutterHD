import 'package:flutter/material.dart';

class Consultas extends StatefulWidget {
  const Consultas({super.key});

  @override
  State<Consultas> createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(  //Para titulo de pantalla con flecha hacia atras
        backgroundColor: Colors.teal,
        title: const Center(child: Text('Nueva Consulta')), //Titulo de pantalla
        ),
        body: SingleChildScrollView( //Para realizar scroll
          child: Container(
            child: Column(
              children: [
                Text('Consultas', style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30  //Tamaño de letra
                ),) 
              ],
            ),
          ),
        ),
      ),
    );

  }
}