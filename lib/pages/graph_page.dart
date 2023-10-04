import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/my_drawer.dart';

class GraphPage extends StatelessWidget {
  final Function(int) callback2;

  const GraphPage({Key? key, required this.callback2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(90, 0, 0, 0),
        //leading: const Icon(Icons.menu),
      ),
      backgroundColor: Colors.grey[900],
      drawer: my_drawer(
        callback2: callback2,
        j: 2,
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
