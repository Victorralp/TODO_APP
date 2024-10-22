import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  //refrence of the box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time opening this app ever
  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exericise", false]
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST",todoList);
  }
}
