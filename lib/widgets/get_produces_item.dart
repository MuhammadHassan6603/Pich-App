import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../ui/floating_button_tab/items/item_details.dart';


Widget getProducesItem(BuildContext context,String mainImage,String title,String items,String imagePath,String vendorName,String price) {
  return IntrinsicHeight(
    child: Container(
      width: getWidth(context) * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xFFE9E9E9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child:Image.asset(mainImage),
            ),

            19.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF00AB59)),
                ),
                Text(
                  items,
                  style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF2F2F2F)),
                ),
                7.heightBox,
                Row(
                  children: [
                    Image.asset(
                      imagePath,
                      height: 21,
                      width: 21,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      vendorName,
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF2F2F2F)),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$$price",
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF00AB59)),
            ),
          ],
        ),
      ),
    ).onTap((){
      showDialog(
          context: context, builder: (context){
        return ItemDetails();
      });
    }),
  );
}


