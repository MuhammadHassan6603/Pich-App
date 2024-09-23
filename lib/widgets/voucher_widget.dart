import 'package:flutter/material.dart';

Widget getVoucher(BuildContext context, int price) {
  String imagePath;

  // Determine which image to display based on the price
  if (price == 50) {
    imagePath = 'assets/images/voucher50.png';
  } else if (price == 20) {
    imagePath = 'assets/images/voucher20.png';
  } else if(price == 100) {
    imagePath = 'assets/images/voucher100.png';
  } else{
    imagePath="";
  }

  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.88,
        child: Image.asset(imagePath),
      ),
      const SizedBox(height: 17),
    ],
  );
}
