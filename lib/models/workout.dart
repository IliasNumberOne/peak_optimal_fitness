class Workout {
  final int id;
  final String name;
  final bool premium;
  final String image;
  final String bigImage;
  final String description;
  final List<String> steps;

  Workout({
    required this.id,
    required this.name,
    required this.image,
    required this.bigImage,
    this.premium = false,
    required this.description,
    required this.steps,
  });
}
