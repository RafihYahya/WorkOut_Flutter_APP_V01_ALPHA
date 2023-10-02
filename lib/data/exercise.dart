class Exercise {
  final String name;
  final String wheight;
  final String reps;
  final String sets;
  final String? muscle;
  bool isCompleted;

  Exercise(
      {required this.name,
      required this.wheight,
      required this.reps,
      required this.sets,
      this.muscle,
      this.isCompleted = false});
}
