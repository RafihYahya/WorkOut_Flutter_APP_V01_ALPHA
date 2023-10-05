import 'package:flutter_application_1/data/exec_desc.dart';

class Exercise {
  final String name;
  String wheight;
  String reps;
  String sets;
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
