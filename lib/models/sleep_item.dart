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
