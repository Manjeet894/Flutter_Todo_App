import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference the hive box

  final _myBox = Hive.box('mybox');

  void createInitiableData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", true]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
