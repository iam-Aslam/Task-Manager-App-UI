// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'checkbox.dart';

class ProjectProgressItem extends StatelessWidget {
  const ProjectProgressItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckboxExample(),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              letterSpacing: .5,
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
