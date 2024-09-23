import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getListItem(String imagePath, String text) {
  return IntrinsicWidth(
    child: Container(
      height: 50,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 26,
            width: 26,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2F2F2F)),
          ),
        ],
      ),
    ),
  );
}
