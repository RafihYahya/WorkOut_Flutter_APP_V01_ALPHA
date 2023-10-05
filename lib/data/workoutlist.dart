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
            name: 'Deadlift ',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'DEADLIFT',
                desc: 'Somethign something life is sad ok ok',
                danger: 'HARD')),
        Exercise(
            name: 'Lat Pull-Down',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Lat Pull-Down',
                desc: 'Lat pull down pull the lat down thats about it',
                danger: 'EASY')),
        Exercise(
            name: 'Bent-Over Row',
            wheight: '45Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Bent-Over Row', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Pull-Up',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Pull-Up', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Seated Row',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Seated Row', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'T-Bar Row',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'T-Bar Row', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Biceps Curls',
            wheight: '30Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Biceps Curls', desc: 'Placeholder', danger: 'EASY'))
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
                title: 'Bench Press', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Lateral Raises',
            wheight: '5Kg',
            reps: '13',
            sets: '4',
            desc: Description(
                title: 'Lateral Raises', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Chest fly',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest fly', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Push-up',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest fly', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Dumbbell Bench Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Dumbbell Bench press',
                desc: 'Placeholder',
                danger: 'EASY')),
        Exercise(
            name: 'Chest Dip',
            wheight: '75Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest Dip', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Machine Fly',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Machine Fly', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Overhead Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Overhead Press', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Push-Down',
            wheight: '85Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Push-Down', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Triceps Extension',
            wheight: '35Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Triceps Extension',
                desc: 'Placeholder',
                danger: 'EASY')),
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
                title: 'Squat', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Hip Thrusts',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Hip Thrusts', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Lunges ',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Lunges ', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Romanian Deadlift',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Romanian Deadlift',
                desc: 'Placeholder',
                danger: 'EASY')),
        Exercise(
            name: 'Split Squat',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Split Squat', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Calf Raises',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Calf Raises', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Glute Bridges',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Glute Bridges', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Step-Ups',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Step-Ups', desc: 'Placeholder', danger: 'EASY')),
        Exercise(
            name: 'Side Lunges',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Side Lunges', desc: 'Placeholder', danger: 'EASY')),
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
