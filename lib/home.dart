import 'package:todo/core/td.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/build.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList(), _ctr = TextEditingController();
  List<ToDo> _fnd = [];

  @override
  void initState() {
    _fnd = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Build(fnd: _fnd, chg: _chg, rm: _rm, ctr: _ctr, add: add, ftr: _ftr);
  }

  void _chg(ToDo todo) => setState(() => todo.isDone = !todo.isDone);

  void _rm(String id) =>
      setState(() => todosList.removeWhere((item) => item.id == id));

  void add(String toDo) {
    setState(() => todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo)));
    _ctr.clear();
  }

  void _ftr(String enteredKeyword) => setState(() {
        _fnd = enteredKeyword.isEmpty
            ? todosList
            : todosList
                .where((item) => item.todoText!
                    .toLowerCase()
                    .contains(enteredKeyword.toLowerCase()))
                .toList();
      });
}
