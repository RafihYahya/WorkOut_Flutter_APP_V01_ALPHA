import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/exercise.dart';
import 'package:flutter_application_1/data/workout.dart';

class WorkOutList extends ChangeNotifier {
  List<Workout> workoutlist = [
    Workout(
      name: 'Back Workout',
      exercise: [
        Exercise(name: 'Dead Lift', wheight: '70Kg', reps: '10', sets: '3'),
        Exercise(name: 'Latpull Down', wheight: '55Kg', reps: '10', sets: '3'),
        Exercise(name: 'Rows', wheight: '75Kg', reps: '10', sets: '3'),
        Exercise(name: 'PlaceHolder', wheight: '70Kg', reps: '10', sets: '3')
      ],
    ),
    Workout(
      name: 'Chest Workout',
      exercise: [
        Exercise(name: 'Bench Press', wheight: '55Kg', reps: '10', sets: '3'),
        Exercise(name: 'Lateral Raises', wheight: '5Kg', reps: '13', sets: '4'),
        Exercise(name: 'Dumpbell Press', wheight: '55Kg', reps: '10', sets: '3')
      ],
    ),
    Workout(
      name: 'Leg Workout',
      exercise: [
        Exercise(name: 'Leg Press', wheight: '70Kg', reps: '10', sets: '3'),
        Exercise(name: 'Squat', wheight: '70Kg', reps: '10', sets: '3')
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
      String sets) {
    Workout rightfulworkout =
        workoutlist.firstWhere((workout) => workout.name == name);

    rightfulworkout.exercise.add(
        Exercise(name: exercicename, wheight: weight, reps: reps, sets: sets));
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
