import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';
import 'package:todo/core/td.dart';

class CheckBox extends StatelessWidget {
  final ToDo item;
  const CheckBox({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Text(
      item.todoText!,
      style: TextStyle(
        fontSize: 16,
        color: promptCol,
        decoration: item.isDone ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
