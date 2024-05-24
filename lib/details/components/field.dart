import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE5E5E5), // Underline color
            width: 1.2, // Stroke size
          ),
        ),
      ),
      child: TextFormField(
        controller: controller,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.vazirmatn(
            color: Color(0xFFB4B4B4), // Hint text color
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none, // Remove default border
        ),
      ),
    );
  }
}
