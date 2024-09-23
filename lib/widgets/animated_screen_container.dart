
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';



Widget getContainer(BuildContext context,String title,String price,String items,String imagePath,String vendorName) {
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
                    8.widthBox,
                    Text(
                      price,
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000)),
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
                    4.widthBox,
                    SizedBox(
                        width: 4.5,
                        height: 10,
                        child: Image.asset('assets/icons/arrow_forward.png'))
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 83,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: const Color(0XFFF9B233)
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


