import 'package:flutter_application_1/data/exec_desc.dart';

class Exercise {
  final String name;
  final String wheight;
  final String reps;
  final String sets;
  final String? muscle;
  bool isCompleted;
  final Description? desc;

  Exercise(
      {required this.name,
      required this.wheight,
      required this.reps,
      required this.sets,
      this.muscle,
      this.isCompleted = false,
      this.desc});
}
