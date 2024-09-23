import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget getOrdersRow(String imagePath,String text,String price){
  return Row(
    children: [
      Image.asset(imagePath,width: 25,height: 27,),
      5.5.widthBox,
      Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color:const Color(0xFF2F2F2F)
        ),
      ),
      const Spacer(),
      Text(
        price,
        style: GoogleFonts.montserrat(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color:const Color(0xFF00AB59)
        ),
      ),
    ],
  );
}