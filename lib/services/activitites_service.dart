import 'package:peak_optimal/models/models.dart';
import 'package:sqflite/sqlite_api.dart';

const weightTable = 'weight_table';
const sleepTable = 'sleep_table';

class ActivitiesService {
  final Database database;

  ActivitiesService(this.database);

  Future<ActivityItem> createWeightList(ActivityItem activityItem) async {
    final map = activityItem.toMap();
    map['id'] = null;
    final id = await database.insert(weightTable, map);
    return activityItem.copyWith(id: id);
  }

  Future<List<ActivityItem>> getAllWeights() async {
    final map = await database.query(weightTable);
    if (map.isEmpty) return [];
    final data = map.map(ActivityItem.fromMap).toList();
    return data;
  }

  Future<void> deleteWeight(ActivityItem activityItem) async {
    await database.delete(
      weightTable,
      where: 'id = ?',
      whereArgs: [activityItem.id],
    );
  }

  Future<SleepItem> createSleepList(SleepItem sleepItem) async {
    final map = sleepItem.toMap();
    map['id'] = null;
    final id = await database.insert(sleepTable, map);
    return sleepItem.copyWith(id: id);
  }

  Future<List<SleepItem>> getAllSleep() async {
    final map = await database.query(sleepTable);
    if (map.isEmpty) return [];
    final data = map.map(SleepItem.fromMap).toList();
    return data;
  }

  Future<void> deleteSleep(SleepItem sleepItem) async {
    await database.delete(
      sleepTable,
      where: 'id = ?',
      whereArgs: [sleepItem.id],
    );
  }
}