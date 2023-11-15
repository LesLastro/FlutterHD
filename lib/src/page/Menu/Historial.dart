import 'package:flutter/material.dart';

class Historial extends StatefulWidget {
  const Historial({Key? key}) : super(key: key);

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
          backgroundColor: Colors.teal,
          title: const Center(child: Text('Historial')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  //historial por fecha
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const SizedBox(
                  width: 280,
                  height: 150,
                  child: Center(
                    child: Text(
                      "Historial por fecha",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //historial por hora
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const SizedBox(
                  width: 280,
                  height: 150,
                  child: Center(
                    child: Text(
                      "Historial por hora",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //historial por usuario
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const SizedBox(
                  width: 280,
                  height: 150,
                  child: Center(
                    child: Text(
                      "Historial por usuario",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
