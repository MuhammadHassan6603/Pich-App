import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';

Widget getOrdersButton(BuildContext context,String title,Color backgroundColor,Color textColor){
  return Container(
    width: getWidth(context)*0.9,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: backgroundColor
    ),
    child: Center(
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: textColor
        ),
      ),
    ),
  );
}