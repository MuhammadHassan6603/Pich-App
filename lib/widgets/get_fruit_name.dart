import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getFruitName(String fruitName){
  return IntrinsicWidth(
    stepWidth: 10,
    child: Container(
      height: 23,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.5),
          color: Color(0xFFFFFFFF).withOpacity(0.8)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            fruitName,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Color(0xFF2F2F2F)
            ),
          ),
        ),
      ),
    ),
  );
}