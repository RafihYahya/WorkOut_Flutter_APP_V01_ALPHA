import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/my_drawer.dart';
import 'package:flutter_application_1/Comp/worktile_hor.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:provider/provider.dart';

class Allexec extends StatefulWidget {
  final Function(int) callback2;

  const Allexec({super.key, required this.callback2});

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
          backgroundColor: Color.fromARGB(125, 0, 0, 0),
        ),
        drawer: my_drawer(
          callback2: widget.callback2,
          j: 1,
        ),
        backgroundColor: Colors.grey.shade900,
        body: Consumer<WorkOutList>(
          builder: (context, values, index) => ListviewHorizon(
            context: context,
            values: values,
            index: index,
            callback2: widget.callback2,
          ),
        ));
  }
}

class ListviewHorizon extends StatefulWidget {
  final Function(int) callback2;

  final WorkOutList values;
  final Widget? index;
  final BuildContext context;

  const ListviewHorizon(
      {super.key,
      required this.context,
      required this.values,
      required this.index,
      required this.callback2});

  @override
  State<ListviewHorizon> createState() => _ListviewHorizonState();
}

class _ListviewHorizonState extends State<ListviewHorizon> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        (screenWidth > 1000)
            ? Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black38,
                  margin: EdgeInsets.only(right: 68.0),
                ),
              )
            : SizedBox(),
        Expanded(
          flex: 3,
          child: ListView.builder(
            controller: ScrollController(
              keepScrollOffset: false,
            ),
            scrollDirection: Axis.vertical,
            itemCount: widget.values.workoutlist.length,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0),
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
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w600),
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
          ),
        ),
      ],
    );
  }
}
