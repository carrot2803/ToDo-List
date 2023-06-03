import 'package:flutter/material.dart';

class AddTxt extends StatelessWidget {
  final TextEditingController ctr;
  const AddTxt({super.key, required this.ctr});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: ctr,
          decoration: const InputDecoration(
              hintText: 'Add an item', border: InputBorder.none),
        ),
      ),
    );
  }
}
