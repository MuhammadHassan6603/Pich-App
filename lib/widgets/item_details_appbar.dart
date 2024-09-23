import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

AppBar getAppBar(BuildContext context,String title,String imagePath){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const SizedBox.shrink(),
    flexibleSpace: Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(imagePath),
            ).onTap(() {
              Navigator.pop(context);
            }),
            Text(
              title,
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFFFFFFF)),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    ),
  );
}