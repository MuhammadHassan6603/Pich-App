import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';



Widget getPostHeader(BuildContext context, Orientation orientation,String imgUrl) {
  return OrientationBuilder(builder: (context, orientation) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      fit: BoxFit.cover,
                      width: orientation == Orientation.portrait ? 35 : 45,
                      height: orientation == Orientation.portrait ? 35 : 45,
                    ),
                  ),
                  10.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jessica Melinda",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait ? 13 : 16,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      Text(
                        "12 jan 2022",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait ? 10 : 12,
                          color: const Color(0xFFC8C8C8),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              )),
          5.heightBox,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: orientation == Orientation.portrait ? 314 : 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                  height: 19.8,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24.71,
                        height: 22.8,
                        child: Image.asset(
                          'assets/icons/heart.png',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "143k",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait ? 12 : 16,
                          color: const Color(0xFFAEAEAE),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // ******** second **********
                      SizedBox(
                        width: 50,
                        height: 19.8,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 24.71,
                              height: 22.8,
                              child: Image.asset(
                                'assets/icons/comment2.png',
                              ),
                            ),
                            const SizedBox(
                                // width: 5,
                                ),
                            Text(
                              "13k",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    orientation == Orientation.portrait ? 12 : 16,
                                color: const Color(0xFFAEAEAE),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 24.71,
                        height: 22.8,
                        child: Image.asset(
                          'assets/icons/share2.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          15.heightBox
        ],
      ),
    );
  });
}
