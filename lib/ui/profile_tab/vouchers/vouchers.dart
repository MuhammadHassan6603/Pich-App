import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:sliver/ui/profile_tab/vouchers/voucher_tabs/current_vouchers.dart';
import 'package:sliver/ui/profile_tab/vouchers/voucher_tabs/expired_vouchers.dart';
import 'package:sliver/ui/profile_tab/vouchers/voucher_tabs/used_vouchers.dart';

class Vouchers extends StatefulWidget {
  const Vouchers({super.key});

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: SegmentedTabControl(
                  height: 50,
                  indicatorDecoration: BoxDecoration(
                    color: const Color(0xFFF9B233),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  barDecoration: BoxDecoration(
                    color: const Color(0xFFE9E9E9),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  indicatorPadding: const EdgeInsets.all(4),
                  selectedTabTextColor: Colors.white,
                  tabTextColor: Colors.black,
                  tabs: const [
                    SegmentTab(
                      label: "Current",
                    ),
                    SegmentTab(
                      label: "Used",
                    ),
                    SegmentTab(
                      label: "Expired",
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CurrentVouchers(),
                    UsedVouchers(),
                    ExpiredVouchers(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
