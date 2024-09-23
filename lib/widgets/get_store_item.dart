import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';



Widget getStoreItem(BuildContext context,String mainImage,String title,String price,String items) {
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
              width: 57,
              // height: 50,
              child: Image.asset(mainImage),
            ),
            19.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF00AB59)),
                    ),
                  ],
                ),
                Text(
                  items,
                  style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF2F2F2F)),
                ),
                Text(
                  price,
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF00AB59)),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 83,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0XFFF9B233)
              ),
              child: Center(
                child: Text(
                  'Add',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFFFFF)),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}


