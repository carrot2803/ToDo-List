import 'package:flutter/material.dart';
import 'package:todo/core/widgets/item.dart';
import 'package:todo/core/td.dart';

class TDL extends StatelessWidget {
  final Function(String) rm;
  final Function(ToDo) chg;
  final List<ToDo> fnd;

  const TDL(
      {super.key, required this.fnd, required this.chg, required this.rm});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            child: const Text(
              'To Do',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          for (ToDo todoo in fnd.reversed)
            ToDoItem(item: todoo, chg: chg, rm: rm),
        ],
      ),
    );
  }
}
