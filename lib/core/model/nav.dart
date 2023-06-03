import 'package:flutter/material.dart';
import 'package:todo/const/color.dart';

class Nav extends StatelessWidget implements PreferredSizeWidget {
  const Nav({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, color: textcol, size: 30),
          SizedBox(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('lib/imgs/carrot.png'),
            ),
          ),
        ],
      ),
    );
  }
}
