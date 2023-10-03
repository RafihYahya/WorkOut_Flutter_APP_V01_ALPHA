import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:flutter_application_1/pages/exerc_descrip_page.dart';

class WorkTileH extends StatefulWidget {
  final BuildContext context;
  final WorkOutList values;
  final int index2;

  const WorkTileH(
      {Key? key,
      required this.context,
      required this.values,
      required this.index2})
      : super(key: key);

  @override
  _WorkTileHState createState() => _WorkTileHState();
}

class _WorkTileHState extends State<WorkTileH> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.values.workoutlist[widget.index2].exercise.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 28.0),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.values.workoutlist[widget.index2]
                              .exercise[index].name
                              .toUpperCase(),
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4.0),
                        Row(
                          children: [
                            Text(
                              'Sets ${widget.values.workoutlist[widget.index2].exercise[index].sets}',
                              style: const TextStyle(fontSize: 12.0),
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              'Reps ${widget.values.workoutlist[widget.index2].exercise[index].reps}',
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4.0),
                        Expanded(
                          child: Text(
                            'Weight  ${widget.values.workoutlist[widget.index2].exercise[index].wheight}',
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 125),
                    const Column(
                      children: [
                        SizedBox(height: 16.0),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ExecDesc(
                            execprop: widget.values.workoutlist[widget.index2]
                                .exercise[index],
                          ))),
                )),
      ),
    );
  }
}