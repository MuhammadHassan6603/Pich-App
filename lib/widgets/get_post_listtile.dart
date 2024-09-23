import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget getListTile(String imagePath,String title,String subtitle){
  return Row(
    children: [SizedBox(
      width: 45,
      height: 45,
      child: ClipOval(
        child: Image.asset(imagePath,fit: BoxFit.cover,),
      ),
    ),
    10.widthBox,
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: const Color(0xFF000000)
        ),),
        Text(subtitle,style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.grey
        ),),
      ],
    ),
    const Spacer(),
    const Icon(Icons.more_horiz,color: Colors.green,),
  ]);
}