import 'package:flutter/material.dart';
import 'package:sliver/widgets/voucher_widget.dart';

class UsedVouchers extends StatelessWidget {
  const UsedVouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 17.0),
        child: Column(
          children: [
            getVoucher(context,50),
            getVoucher(context,100),
            getVoucher(context,20),
            getVoucher(context,20),
            getVoucher(context,100),
            getVoucher(context,20),
          ],
        ),
      ),
    );
  }
}