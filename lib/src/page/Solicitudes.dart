import 'package:flutter/material.dart';

class Solicitudes extends StatefulWidget {
  const Solicitudes({super.key});

  @override
  State<Solicitudes> createState() => _SolicitudesState();
}

class _SolicitudesState extends State<Solicitudes> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(  //Para titulo de pantalla con flecha hacia atras
        backgroundColor: Colors.teal,
        title: const Center(child: Text('Nueva Solicitud')), //Titulo de pantalla
        ),
        body: const SingleChildScrollView( //Para realizar scroll
          child:  Column(
            children: [
              Text('Bodega Origen', style: TextStyle(
                color: Colors.teal,
                fontSize: 30  //Tamaño de letra
              ),) 
            ],
          ),
        ),
      ),
    );

  }
}