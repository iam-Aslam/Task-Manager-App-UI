import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtTitle extends StatelessWidget {
  const SubtTitle({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          letterSpacing: .5,
          fontSize: 25,
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
