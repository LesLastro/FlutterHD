import 'package:flutter/material.dart';
import 'package:yes/src/page/Menu/Consultas.dart';
import 'package:yes/src/page/Menu/Historial.dart';
import 'package:yes/src/page/Menu/OpcionesMenuTab.dart';
import 'package:yes/src/page/Menu/Sede.dart';
import 'package:yes/src/page/MenuPrincipal.dart';
import 'package:yes/src/page/Scanner/DataQrPage.dart';
import 'package:yes/src/page/Scanner/Scanner.dart';
import 'package:yes/src/page/Solicitudes.dart';
import 'package:yes/src/page/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login' : (context) => const Login(),
        'menu_principal' : (context) => const MenuPrincipal(),
        'solicitudes' : (context) => const Solicitudes(),
        'OpcionesMenuTab' : (context) => const OpcionesMenuTab(),
        'Consultas' : (context) => const Consultas(),
        'Historial' : (context) => const Historial(),
        'Sede' : (context) => const Sede(),
        'Scanner' : (context) => const ScannerMain(),
        'Data_qr_page' : (context) => const DataQrPage(),
      },
    );
  }
}
