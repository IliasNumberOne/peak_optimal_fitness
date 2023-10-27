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
      id: id,
      date: date,
      num: num,
      additionalNum: additionalNum,
    );
  }
}
