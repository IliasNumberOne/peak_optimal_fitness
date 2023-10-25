import 'package:peak_optimal/models/models.dart';

enum CategoryType {
  all,
  favorite,
  chestAndBack,
  shoulders,
  arms,
  legs,
  cardio,
  stretching,
  forWeightLoss,
}

class Category {
  final int id;
  final String name;
  final CategoryType categoryType;
  final List<Workout> workouts;

  Category({
    required this.id,
    required this.name,
    required this.categoryType,
    required this.workouts,
  });
}
