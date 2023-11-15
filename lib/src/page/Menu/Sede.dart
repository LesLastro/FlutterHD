import 'package:flutter/material.dart';

class Sede extends StatefulWidget {
  const Sede({Key? key}) : super(key: key);

  @override
  State<Sede> createState() => _SedeState();
}

class _SedeState extends State<Sede> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text('Sede')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para Guatemala
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
                          "Guatemala",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para Honduras
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
                          "Honduras",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
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
