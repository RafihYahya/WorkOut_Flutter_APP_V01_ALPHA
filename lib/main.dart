import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:flutter_application_1/pages/allexec_page.dart';
import 'package:flutter_application_1/pages/graph_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/remainingexec_page.dart';

import 'package:provider/provider.dart';

import 'data/gnavcustom.dart';

void main() => runApp(const WorkoutApp());

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({Key? key}) : super(key: key);
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

  void updateindex(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> routes = [
      HomePage(callback2: updateindex),
      Allexec(callback2: updateindex),
      RemExec(callback2: updateindex),
      GraphPage(callback2: updateindex)
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          body: routes[index],
          bottomNavigationBar: index != 3
              ? Gnavcustom(callback: updateindex)
              : const SizedBox()),
    );
  }
}
