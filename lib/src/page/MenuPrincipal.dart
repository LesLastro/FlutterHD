import 'package:flutter/material.dart';
import 'package:yes/src/utils/AnimationGenerator.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget createMenu(String img, String titulo, String ruta){
      return GestureDetector(
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.teal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(img, width: 40),
              Text(
                  titulo,
                  style: const TextStyle(color: Colors.white, fontSize: 30)
              ),
            ],
          ),
        ),
        onTap: () => Navigator.pushNamed(context, ruta),
      );
    }

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text('Menú principal')),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                AnimationGenerator(
                  duration: const Duration(seconds: 1),
                  delay: const Duration(seconds: 0),
                  isLeft: true,
                  child: createMenu(
                    'images/Solicitudes.png',
                    'Solicitudes',
                    'solicitudes'
                  ),
                ),
                const SizedBox(height: 10,),
                AnimationGenerator(
                  duration: const Duration(seconds: 1),
                  delay: const Duration(seconds: 0),
                  isLeft: false,
                  child: createMenu(
                      'images/Consultas.png',
                      'Consultas',
                      'Consultas'
                  ),
                ),
                const SizedBox(height: 10,),
                AnimationGenerator(
                  duration: const Duration(seconds: 1),
                  delay: const Duration(seconds: 0),
                  isLeft: true,
                  child: createMenu(
                      'images/Historial.png',
                      'Historial',
                      'Historial'
                  ),
                ),
                const SizedBox(height: 10,),
                AnimationGenerator(
                  duration: const Duration(seconds: 1),
                  delay: const Duration(seconds: 0),
                  isLeft: false,
                  child: createMenu(
                      'images/Sede.png',
                      'Sede',
                      'Sede'
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