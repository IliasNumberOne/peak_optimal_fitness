class Activity {
  final int id;
  final String name;
  final String icon;
  final String screenPath;
  final String measure;

  const Activity({
    required this.id,
    required this.name,
    required this.icon,
    required this.measure,
    required this.screenPath,
  });
}

class ActivityItem {
  final int id;
  final String date;
  final double num;
  final String additionalNum;

  const ActivityItem({
    required this.id,
    required this.date,
    required this.num,
    required this.additionalNum,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'num': num,
      'additionalNum': additionalNum,
    };
  }

  factory ActivityItem.fromMap(Map<String, dynamic> map) {
    return ActivityItem(
      id: map['id'] ?? 0,
      date: map['date'] ?? '',
      num: map['num'] ?? 0,
      additionalNum: map['additionalNum'] ?? '',
    );
  }

  ActivityItem copyWith({required int id}) {
    return ActivityItem(
        id: id, date: date, num: num, additionalNum: additionalNum);
  }
}

class SleepItem {
  final int id;
  final String date;
  final String num;
  final String bedTime;
  final String risingTime;

  const SleepItem(
      {required this.id,
      required this.date,
      required this.num,
      required this.bedTime,
      required this.risingTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'num': num,
      'bedTime': bedTime,
      'risingTime': risingTime,
    };
  }

  factory SleepItem.fromMap(Map<String, dynamic> map) {
    return SleepItem(
      id: map['id'] ?? 0,
      date: map['date'] ?? '',
      num: map['num'] ?? '',
      bedTime: map['bedTime'] ?? '',
      risingTime: map['risingTime'] ?? '',
    );
  }

  SleepItem copyWith({required int id}) {
    return SleepItem(
      id: id,
      date: date,
      num: num,
      bedTime: bedTime,
      risingTime: risingTime,
    );
  }
}
