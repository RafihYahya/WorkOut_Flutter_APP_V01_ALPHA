import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/worktile_hor.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:provider/provider.dart';

class Allexec extends StatefulWidget {
  const Allexec({super.key});

  @override
  State<Allexec> createState() => _AllexecState();
}

class _AllexecState extends State<Allexec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'MY WORKOUT ',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5),
          )),
          elevation: 0,
          backgroundColor: const Color.fromARGB(90, 0, 0, 0),
          leading: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.grey.shade900,
        body: Consumer<WorkOutList>(
          builder: (context, values, index) =>
              ListviewHorizon(context: context, values: values, index: index),
        ));
  }
}

class ListviewHorizon extends StatefulWidget {
  final WorkOutList values;
  final Widget? index;
  final BuildContext context;

  const ListviewHorizon(
      {super.key,
      required this.context,
      required this.values,
      required this.index});

  @override
  State<ListviewHorizon> createState() => _ListviewHorizonState();
}

class _ListviewHorizonState extends State<ListviewHorizon> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(
        keepScrollOffset: false,
      ),
      scrollDirection: Axis.vertical,
      itemCount: widget.values.workoutlist.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0),
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: Text(
                            widget.values.workoutlist[index].name,
                            style: const TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w600),
                          )),
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: WorkTileH(
                    context: context,
                    values: widget.values,
                    index2: index,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
