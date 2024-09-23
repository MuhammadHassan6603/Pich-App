import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget getHeader(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 60,
        height: 60,
        child: Image.asset('assets/images/tree.png'),
      ),
      11.widthBox,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning",
            style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF00AB59)),
          ),
          Text(
            "Jessica",
            style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2F2F2F)),
          ),
        ],
      ),
      const Spacer(),
      Padding(
        padding: EdgeInsets.only(right: getWidth(context) * 0.035),
        child: SizedBox(
          width: 18,
          height: 24,
          child: Image.asset('assets/images/bell.png'),
        ),
      )
    ],
  );
}
