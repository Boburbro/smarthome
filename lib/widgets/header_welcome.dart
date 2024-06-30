import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWelcome extends StatelessWidget {
  const HeaderWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Home!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[700],
              height: 0,
            ),
          ),
          Text(
            "SMART HOME",
            style: TextStyle(
              fontSize: 52,
              fontFamily: GoogleFonts.bebasNeue().fontFamily,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
