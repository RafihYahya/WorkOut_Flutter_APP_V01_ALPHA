import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:provider/provider.dart';

class WorkoutPage extends StatefulWidget {
  final String title;
  const WorkoutPage({Key? key, required this.title}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

final newworkoutController = TextEditingController();
final exerciceset = TextEditingController();
final exercicerep = TextEditingController();
final exercicew = TextEditingController();
final exercicedesc = TextEditingController();

class _WorkoutPageState extends State<WorkoutPage> {
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

  void createNewExercice(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black87,
        title: const Text('Create New Workout'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: newworkoutController,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Exercice Name'),
            ),
            TextFormField(
              controller: exercicew,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Your Weight'),
            ),
            TextFormField(
              controller: exercicerep,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Amount of Reps'),
            ),
            TextFormField(
              controller: exerciceset,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Amount of Sets'),
            ),
            TextFormField(
              controller: exercicedesc,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Description'),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: MaterialButton(
              padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
              onPressed: () => save(context),
              color: Colors.greenAccent,
              textColor: Colors.black,
              child: const Text('SAVE',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: MaterialButton(
              padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
              onPressed: () => cancel(context),
              color: Colors.redAccent,
              textColor: Colors.black,
              child: const Text('CANCEL',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  void save(BuildContext context) {
    Provider.of<WorkOutList>(context, listen: false).addexercice(
        widget.title,
        newworkoutController.text,
        exercicew.text,
        exercicerep.text,
        exerciceset.text,
        exercicedesc.text);
    Navigator.pop(context);
    newworkoutController.clear();
    exercicerep.clear();
    exerciceset.clear();
    exercicew.clear();
    exercicedesc.clear();
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
    newworkoutController.clear();
    exercicerep.clear();
    exerciceset.clear();
    exercicew.clear();
    exercicedesc.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkOutList>(
        builder: (context, values, child) => Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
                backgroundColor: Colors.black26,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (() => createNewExercice(context)),
                backgroundColor: Colors.black38,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.grey[900],
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView.builder(
                  itemCount: values.workoutlist
                      .firstWhere((workout) => workout.name == widget.title)
                      .exercise
                      .length,
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
                                  'Reps ${values.workoutlist.firstWhere((workout) => workout.name == widget.title).exercise[index].reps}',
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
                                  'Sets ${values.workoutlist.firstWhere((workout) => workout.name == widget.title).exercise[index].sets}',
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
                                  'Weight ${values.workoutlist.firstWhere((workout) => workout.name == widget.title).exercise[index].wheight}',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      tileColor: !values.workoutlist
                              .firstWhere(
                                  (workout) => workout.name == widget.title)
                              .exercise[index]
                              .isCompleted
                          ? Colors.black38
                          : const Color.fromARGB(106, 25, 226, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          values.workoutlist
                              .firstWhere(
                                  (workout) => workout.name == widget.title)
                              .exercise[index]
                              .name
                              .toString(),
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () => {
                        setState(() {
                          values.workoutlist
                                  .firstWhere(
                                      (workout) => workout.name == widget.title)
                                  .exercise[index]
                                  .isCompleted =
                              !values.workoutlist
                                  .firstWhere(
                                      (workout) => workout.name == widget.title)
                                  .exercise[index]
                                  .isCompleted;
                        })
                      },
                      trailing: Checkbox(
                          value: values.workoutlist
                              .firstWhere(
                                  (workout) => workout.name == widget.title)
                              .exercise[index]
                              .isCompleted,
                          checkColor: Colors.black,
                          onChanged: (bool? value) {
                            setState(() {
                              values.workoutlist
                                  .firstWhere(
                                      (workout) => workout.name == widget.title)
                                  .exercise[index]
                                  .isCompleted = value!;
                            });
                          }),
                    ),
                  ),
                ),
              ),
            ));
  }
}
