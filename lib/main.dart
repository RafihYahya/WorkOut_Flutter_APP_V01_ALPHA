import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:flutter_application_1/pages/allexec_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/remainingexec_page.dart';

import 'package:provider/provider.dart';

import 'data/gnavcustom.dart';

void main() => runApp(const CofeeApp());

class CofeeApp extends StatelessWidget {
  const CofeeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkOutList(),
      child: const NewWidget(),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
  });

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  int index = 0;
  final List<Widget> routes = [
    const Allexec(),
    const HomePage(),
    const RemExec(),
  ];
  void updateindex(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: routes[index],
        bottomNavigationBar: Gnavcustom(callback: updateindex),
      ),
    );
  }
}
