import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';
import 'package:todo/core/td.dart';

class Txt extends StatelessWidget {
  final ToDo item;
  const Txt({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Icon(
      item.isDone ? Icons.check_box : Icons.check_box_outline_blank,
      color: primary,
    );
  }
}
