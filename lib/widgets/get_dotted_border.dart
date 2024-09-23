import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/shortcuts.dart';

Widget getDottedBOrder(BuildContext context){
  return Align(
    alignment: Alignment.center,
    child: DottedBorder(
      color: Color(0xFF00AB59),
      strokeWidth: 1,
      dashPattern: [6, 8],
      borderType: BorderType.RRect,
      radius: Radius.circular(19),
      child: Container(
        width: getWidth(context)*0.9,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
        ),
        child: Center(
          child: Text(
            "Select Vouchers worth 17.54",
            style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF00AB59)),
          ),
        ),
      ),
    ),
  );
}