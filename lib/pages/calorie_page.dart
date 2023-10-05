import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/my_drawer.dart';

class CaloriePage extends StatelessWidget {
  final Function(int) callback2;

  const CaloriePage({Key? key, required this.callback2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(90, 0, 0, 0),
        //leading: const Icon(Icons.menu),
      ),
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      drawer: my_drawer(
        callback2: callback2,
        j: 3,
      ),
      body: const Center(
        child: Text(
          'COMING SOON',
          style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
