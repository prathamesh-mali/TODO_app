import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //referencing the box
  final _mybox = Hive.box('mybox');

// run this if app is opened for the first time
  void createInitialData() {
    toDoList = [

    ];

  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");

  }

  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
