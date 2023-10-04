import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/my_drawer.dart';
import 'package:flutter_application_1/data/workout.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:flutter_application_1/pages/exerc_descrip_page.dart';
import 'package:provider/provider.dart';

class RemExec extends StatefulWidget {
  final Function(int) callback2;

  const RemExec({super.key, required this.callback2});

  @override
  State<RemExec> createState() => _RemExecState();
}

List allimcpexec(BuildContext context) {
  List<Workout> elements =
      Provider.of<WorkOutList>(context, listen: false).workoutlist;
  List incExec = [];
  for (var i in elements) {
    for (var j in i.exercise) {
      if (j.isCompleted == false) {
        incExec.add(j);
      }
    }
  }
  return incExec;
}

void toggleexercice(
    BuildContext context, String workoutname, String exercicename) {
  Provider.of<WorkOutList>(context, listen: false)
          .workoutlist
          .firstWhere((workout) => workout.name == workoutname)
          .exercise
          .firstWhere((exercice) => exercice.name == exercicename)
          .isCompleted ==
      true;
}

class _RemExecState extends State<RemExec> {
  @override
  Widget build(BuildContext context) {
    List totalincExec = allimcpexec(context);
    return Consumer<WorkOutList>(
        builder: (context, values, child) => Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_rounded,
                      size: 25.0,
                      color: Colors.yellow.shade700,
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      'Press To Complete',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                backgroundColor: Colors.black45,
                elevation: 0,
              ),
              drawer: my_drawer(
                callback2: widget.callback2,
                j: 1,
              ),
              backgroundColor: Colors.grey[900],
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: totalincExec.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Row(
                        children: [
                          Expanded(
                            child: Card(
                              margin: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Reps ${totalincExec[index].reps}',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              margin: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Sets ${totalincExec[index].sets}',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              margin: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Weight ${totalincExec[index].wheight}',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 6.0),
                      tileColor: Colors.black45,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          totalincExec[index].name,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ExecDesc(execprop: totalincExec[index])))
                      },
                      onLongPress: () => setState(() {
                        totalincExec[index].isCompleted = true;
                      }),
                    ),
                  ),
                ),
              ),
            ));
  }
}
