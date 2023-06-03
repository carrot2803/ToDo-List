import 'package:flutter/material.dart';
import 'package:todo/core/comp/box.dart';
import 'package:todo/core/comp/txt.dart';
import 'package:todo/core/comp/trash.dart';
import 'package:todo/core/td.dart';

class ToDoItem extends StatelessWidget {
  final ToDo item;
  final Function chg, rm;

  const ToDoItem(
      {super.key, required this.item, required this.chg, required this.rm});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () => chg(item),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Txt(item: item),
        title: CheckBox(item: item),
        trailing: Trash(item: item, rm: rm),
      ),
    );
  }
}
