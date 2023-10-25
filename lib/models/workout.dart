class Workout {
  final int id;
  final String name;
  final bool premium;
  final String description;
  final List<String> steps;

  Workout({
    required this.id,
    required this.name,
    this.premium = false,
    required this.description,
    required this.steps,
  });
}
