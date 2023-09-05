import 'package:flutter/material.dart';
import 'package:yes/src/page/MenuPrincipal.dart';
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
      },
    );
  }
}
