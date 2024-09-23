import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/shortcuts.dart';
import 'get_orders_row.dart';
List<String> images=[
  'assets/images/image1.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image4.png',
  'assets/images/image5.png',
];

List<String> text=[
  'Peer',
  'Lemon',
  'Red Grapes',
  'Watermelon',
  'Banana',
];

List<String> price=[
  '500g',
  '250g',
  '500g',
  'Medium',
  '6',
];

Widget getOrdersContainer(BuildContext context){
  return IntrinsicHeight(
    child: Container(
      width: getWidth(context)*0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(0xFFE9E9E9)
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/fruits.png',width: 57,height: 33,),
                19.widthBox,
                Text(
                  "Fruits Produce",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF000000)),
                ),
                Spacer(),
                Text(
                  "\$17.54",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF00AB59)),
                ),
              ],
            ),
            18.heightBox,
            Text(
              "5 items",
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFF9B233)),
            ),
            7.heightBox,
            Column(
              children: List.generate(images.length, (index) {
                return getOrdersRow(images[index], text[index], price[index]);
              }),
            )
          ],
        ),
      ),
    ),
  );
}