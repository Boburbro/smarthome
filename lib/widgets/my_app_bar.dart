import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/menu.png',
            height: 45,
            color: Colors.grey[800],
          ),
          Icon(
            Icons.person_rounded,
            size: 45,
            color: Colors.grey[800],
          )
        ],
      ),
    );
  }
}
