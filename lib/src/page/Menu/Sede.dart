import 'package:flutter/material.dart';

class Sede extends StatefulWidget {
  const Sede({super.key});

  @override
  State<Sede> createState() => _SedeState();
}

class _SedeState extends State<Sede> {
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
                Text('Sede', style: TextStyle(
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