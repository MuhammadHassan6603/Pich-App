import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget billyVendor(BuildContext context) {
  return Container(
    width: getWidth(context) * 0.9,
    height: 72,
    decoration: BoxDecoration(
        color: const Color(0xFF00AB59),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset('assets/images/redshop.png'),
          ),
          9.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Billy Vendor",
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFFFFFFF)),
              ),
              Text(
                "Main Street Downtown",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFFFFFFF)),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 14.75,
            height: 19.63,
            child: Image.asset('assets/icons/loc.png'),
          ),
          7.widthBox
        ],
      ),
    ),
  );
}
