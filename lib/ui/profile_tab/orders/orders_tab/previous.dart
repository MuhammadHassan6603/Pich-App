import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class PreviousScreen extends StatelessWidget {
  const PreviousScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Center(
                child: Container(
                  // width: 343,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 127,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE9E9E9),
                      borderRadius: BorderRadius.circular(19)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order ID 76372",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFF000000)),
                                ),
                                10.heightBox,
                                Row(
                                  children: [
                                    Image.asset('assets/images/basket.png'),
                                    10.widthBox,
                                    Text(
                                      "Fruits Produce",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: const Color(0xFF000000)),
                                    ),
                                    10.widthBox,
                                    Text(
                                      "\$17.54",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: const Color(0xFF00AB59)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Vouchers",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: const Color(0xFF000000)),
                                ),
                                Text(
                                  "\$10.00",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: const Color(0xFF00AB59)),
                                ),
                                Text(
                                  "\$10.00",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: const Color(0xFF00AB59)),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFD2D2D2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 21,
                                  height: 21,
                                  color: Colors.yellow,
                                  child: Image.asset('assets/images/container.png'),
                                ),
                              ),
                              5.widthBox,
                              Text(
                                "Walii Vendor",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xFF2F2F2F)),
                              ),
                              3.widthBox,
                              const SizedBox(
                                width: 3.5,
                                height: 7,
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size:
                                      7, // Adjust size to fit within the given width and height
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 21,
                                height: 20,
                                child: Image.asset('assets/images/scooter.png'),
                              ),
                              5.widthBox,
                              Text("15 min",style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: const Color(0xFF2F2F2F)),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
