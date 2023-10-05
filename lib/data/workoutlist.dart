import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/exec_desc.dart';
import 'package:flutter_application_1/data/exercise.dart';
import 'package:flutter_application_1/data/workout.dart';

class WorkOutList extends ChangeNotifier {
  List<Workout> workoutlist = [
    Workout(
      name: 'Back Workout',
      exercise: [
        Exercise(
            name: 'Dead Lift',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'DEAD LIFT',
                desc: 'Somethign something life is sad ok ok',
                danger: 'HARD')),
        Exercise(
            name: 'Latpull Down',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'LatPullDown',
                desc: 'Lat pull down pull the lat down thats about it',
                danger: 'EASY')),
        Exercise(
            name: 'Rows',
            wheight: '75Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'PlaceHolder',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY'))
      ],
    ),
    Workout(
      name: 'Chest Workout',
      exercise: [
        Exercise(
            name: 'Bench Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Lateral Raises',
            wheight: '5Kg',
            reps: '13',
            sets: '4',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Dumpbell Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY'))
      ],
    ),
    Workout(
      name: 'Leg Workout',
      exercise: [
        Exercise(
            name: 'Leg Press',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Squat',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Placeholder', desc: 'Placeholder', danger: 'EASY'))
      ],
    )
  ];

  // retrieve workout

  List<Workout> getworkout() {
    return workoutlist;
  }

  int gettotalworkout() {
    return workoutlist.length;
  }

  void addworkout(String name) {
    workoutlist.add(Workout(name: name, exercise: []));
    notifyListeners();
  }

  void addexercice(String name, String exercicename, String weight, String reps,
      String sets, String desc) {
    Workout rightfulworkout =
        workoutlist.firstWhere((workout) => workout.name == name);

    rightfulworkout.exercise.add(Exercise(
        name: exercicename,
        wheight: weight,
        reps: reps,
        sets: sets,
        desc: Description(title: desc, desc: desc, danger: 'EASY')));
    notifyListeners();
  }

  void checkoffworkout(String workoutname, String exercicename) {
    Workout rightfulworkout =
        workoutlist.firstWhere((workout) => workout.name == workoutname);
    Exercise rightexercice = rightfulworkout.exercise
        .firstWhere((exercice) => exercice.name == exercicename);
    rightexercice.isCompleted = true;
    notifyListeners();
  }
}
