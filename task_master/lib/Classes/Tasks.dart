class Tasks {
  String id;
  bool check;
  DateTime date;
  String description;
  String name;

  Tasks({
    required this.id,
    required this.check,
    required this.date,
    required this.description,
    required this.name,
  });

  factory Tasks.fromMap(Map<String, dynamic> data) {
    return Tasks(
      id: data['id'],
      check: data['check'],
      date: data['date'].toDate(),
      description: data['description'],
      name: data['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'check': check,
      'date': date,
      'description': description,
      'name': name,
    };
  }
}
