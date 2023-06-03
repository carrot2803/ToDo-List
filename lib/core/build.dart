import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';
import 'package:todo/core/model/body.dart';
import 'package:todo/core/model/footer.dart';
import 'package:todo/core/model/nav.dart';
import 'package:todo/core/td.dart';

class Build extends StatelessWidget {
  final Function(String) add, ftr, rm;
  final TextEditingController ctr;
  final Function(ToDo) chg;
  final List<ToDo> fnd;

  const Build({
    super.key,
    required this.fnd,
    required this.chg,
    required this.rm,
    required this.ctr,
    required this.add,
    required this.ftr,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const Nav(),
      body: Stack(
        children: [
          Body(chg: chg, fnd: fnd, ftr: ftr, rm: rm),
          Footer(add: add, ctr: ctr),
        ],
      ),
    );
  }
}
