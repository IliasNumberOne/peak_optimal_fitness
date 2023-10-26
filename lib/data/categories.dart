import 'package:peak_optimal/data/stretching_workouts.dart';
import 'package:peak_optimal/data/weight_gain_workouts.dart';
import 'package:peak_optimal/data/weight_loss_workouts.dart';
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
      ...cardioWorkouts,
      ...stretchingWorkouts,
      ...weightLossWorkouts,
      ...weightGainWorkouts,
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
    workouts: chestBackWorkouts,
  ),
  Category(
    id: 3,
    name: 'Shoulders',
    categoryType: CategoryType.shoulders,
    workouts: shouldersWorkouts,
  ),
  Category(
    id: 4,
    name: 'Arms',
    categoryType: CategoryType.arms,
    workouts: armsWorkouts,
  ),
  Category(
    id: 5,
    name: 'Legs',
    categoryType: CategoryType.legs,
    workouts: legsWorkouts,
  ),
  Category(
    id: 6,
    name: 'Cardio',
    categoryType: CategoryType.cardio,
    workouts: armsWorkouts,
  ),
  Category(
    id: 7,
    name: 'Stretching',
    categoryType: CategoryType.stretching,
    workouts: armsWorkouts,
  ),
  Category(
    id: 8,
    name: 'For weight loss',
    categoryType: CategoryType.forWeightLoss,
    workouts: armsWorkouts,
  ),
  Category(
    id: 9,
    name: 'Weight gain',
    categoryType: CategoryType.weightGain,
    workouts: armsWorkouts,
  ),
];
