class Task {
  final int? id;
  final String title;
  final String description;
  final bool completed;
  final String? createdAt;

  Task({
    this.id,
    required this.title,
    required this.description,
    this.completed = false,
    this.createdAt,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      completed: json['completed'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'description': description, 'completed': completed};
  }
}
