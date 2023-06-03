import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';
import 'package:todo/core/td.dart';

class Trash extends StatelessWidget {
  final ToDo item;
  final Function rm;
  const Trash({super.key, required this.item, required this.rm});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.symmetric(vertical: 12),
      height: 40,
      width: 35,
      decoration:
          BoxDecoration(color: mRed, borderRadius: BorderRadius.circular(25)),
      child: IconButton(
        color: background,
        iconSize: 18,
        icon: const Icon(Icons.delete),
        onPressed: () => rm(item.id),
      ),
    );
  }
}
