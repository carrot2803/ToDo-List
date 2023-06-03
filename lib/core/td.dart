class ToDo {
  String? id, todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Excercise', isDone: true),
      ToDo(id: '02', todoText: 'Meal Prep', isDone: true),
      ToDo(id: '03', todoText: 'Love Yourself'),
      ToDo(id: '04', todoText: 'Team Meeting'),
    ];
  }
}
