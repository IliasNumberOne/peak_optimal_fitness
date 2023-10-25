import 'package:peak_optimal/models/models.dart';

import 'data.dart';

final List<Category> categories = [
  Category(
    id: 0,
    name: 'All',
    categoryType: CategoryType.all,
    workouts: [
      ...chestBackWorkouts,
      ...shouldersWorkouts,
      ...armsWorkouts,
      ...legsWorkouts,
    ],
  ),
  Category(
    id: 1,
    name: 'Favorite',
    categoryType: CategoryType.favorite,
    workouts: [],
  ),
  Category(
    id: 2,
    name: 'Chest and back',
    categoryType: CategoryType.chestAndBack,
    workouts: [],
  ),
  Category(
    id: 3,
    name: 'Shoulders',
    categoryType: CategoryType.shoulders,
    workouts: [],
  ),
  Category(
    id: 4,
    name: 'Favorite',
    categoryType: CategoryType.favorite,
    workouts: [],
  ),
];
