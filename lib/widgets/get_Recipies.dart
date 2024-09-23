import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget getRecipies(BuildContext context,String imagePath,String title,String description){
  return Container(
    width: getWidth(context)*0.9,
    height: 91,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      color: const Color(0xFFE9E9E9)
    ),
    child: Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          SizedBox(
            width: 81,
            height: 73,
            child: Image.asset(imagePath),
          ),
          9.widthBox,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF00AB59)
                ),),
                Text(description,maxLines: 2,overflow: TextOverflow.ellipsis ,style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F2F),
                )
                  ,),
              ],
            ),
          )
        ],
      ),
    ),
  );
}