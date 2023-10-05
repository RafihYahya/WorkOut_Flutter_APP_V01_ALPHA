import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_drawer extends StatelessWidget {
  final Function(int) callback2;
  const my_drawer({super.key, required this.callback2, required this.j});
  final int j;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 275,
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 15, 15, 15)),
              child: Center(
                  child: Icon(
                Icons.flutter_dash,
                size: 88.0,
              ))),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              onTap: () => {callback2(0), Navigator.pop(context)},
              title: const Text(
                'Main Page',
                style: TextStyle(fontSize: 18.0),
              ),
              tileColor: j == 1 ? Colors.black54 : Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              onTap: () => {callback2(3), Navigator.pop(context)},
              title: const Text(
                'Graph View',
                style: TextStyle(fontSize: 18.0),
              ),
              tileColor: j == 2 ? Colors.black54 : Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              onTap: () => {callback2(4), Navigator.pop(context)},
              title: const Text(
                'Calorie Calc',
                style: TextStyle(fontSize: 18.0),
              ),
              tileColor: j == 3 ? Colors.black54 : Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
