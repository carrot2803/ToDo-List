import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';

class AddBtn extends StatelessWidget {
  final Function(String) add;
  final TextEditingController ctr;

  const AddBtn({super.key, required this.ctr, required this.add});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, right: 20),
      child: ClipOval(
        child: ElevatedButton(
          onPressed: () => add(ctr.text),
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            minimumSize: const Size(60, 60),
            elevation: 10,
          ),
          child: const Text('+', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
