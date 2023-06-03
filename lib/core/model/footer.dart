import 'package:flutter/material.dart';
import 'package:todo/core/comp/addbtn.dart';
import 'package:todo/core/comp/addtxt.dart';

class Footer extends StatelessWidget {
  final Function(String) add;
  final TextEditingController ctr;

  const Footer({super.key, required this.ctr, required this.add});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(children: [AddTxt(ctr: ctr), AddBtn(ctr: ctr, add: add)]),
    );
  }
}
