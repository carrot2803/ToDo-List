import 'package:flutter/material.dart';
import 'package:todo/core/widgets/list.dart';
import 'package:todo/core/widgets/search.dart';
import 'package:todo/core/td.dart';

class Body extends StatelessWidget {
  final Function(String) ftr, rm;
  final Function(ToDo) chg;
  final List<ToDo> fnd;

  const Body({
    super.key,
    required this.fnd,
    required this.chg,
    required this.rm,
    required this.ftr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [SearchBox(onChanged: ftr), TDL(chg: chg, fnd: fnd, rm: rm)],
      ),
    );
  }
}
