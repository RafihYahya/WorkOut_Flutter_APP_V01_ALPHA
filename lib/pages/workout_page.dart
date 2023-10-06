import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/workout.dart';
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
        'Empty');
    Navigator.pop(context);
    newworkoutController.clear();
    exercicerep.clear();
    exerciceset.clear();
    exercicew.clear();
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
    newworkoutController.clear();
    exercicerep.clear();
    exerciceset.clear();
    exercicew.clear();
  }

  Workout? getvaluefromprovider(WorkOutList temp, Workout? exercisex) {
    if (exercisex != null) {
      return exercisex;
    } else {
      exercisex = temp.workoutlist
          .firstWhere((workout) => workout.name == widget.title);
      return exercisex;
    }
  }

  @override
  Widget build(BuildContext context) {
    Workout? exercicex;
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
              backgroundColor: const Color.fromARGB(255, 30, 30, 30),
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView.builder(
                  itemCount:
                      getvaluefromprovider(values, exercicex)!.exercise.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                getvaluefromprovider(values, exercicex)!
                                    .exercise[index]
                                    .reps = (int.parse(getvaluefromprovider(
                                                values, exercicex)!
                                            .exercise[index]
                                            .reps) +
                                        1)
                                    .toString();
                              }),
                              child: Card(
                                margin: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Reps ${getvaluefromprovider(values, exercicex)!.exercise[index].reps}',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                getvaluefromprovider(values, exercicex)!
                                    .exercise[index]
                                    .sets = (int.parse(getvaluefromprovider(
                                                values, exercicex)!
                                            .exercise[index]
                                            .sets) +
                                        1)
                                    .toString();
                              }),
                              child: Card(
                                margin: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Sets ${getvaluefromprovider(values, exercicex)!.exercise[index].sets}',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                getvaluefromprovider(values, exercicex)!
                                        .exercise[index]
                                        .wheight =
                                    '${int.parse(getvaluefromprovider(values, exercicex)!.exercise[index].wheight.substring(0, 2)) + 5} Kg';
                              }),
                              child: Card(
                                margin: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Weight ${getvaluefromprovider(values, exercicex)!.exercise[index].wheight}',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      tileColor: !getvaluefromprovider(values, exercicex)!
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
                          getvaluefromprovider(values, exercicex)!
                              .exercise[index]
                              .name
                              .toString(),
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () => {
                        setState(() {
                          getvaluefromprovider(values, exercicex)!
                                  .exercise[index]
                                  .isCompleted =
                              !getvaluefromprovider(values, exercicex)!
                                  .exercise[index]
                                  .isCompleted;
                        })
                      },
                      trailing: Checkbox(
                          value: getvaluefromprovider(values, exercicex)!
                              .exercise[index]
                              .isCompleted,
                          checkColor: Colors.black,
                          onChanged: (bool? value) {
                            setState(() {
                              getvaluefromprovider(values, exercicex)!
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
