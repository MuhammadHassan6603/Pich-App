import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:sliver/ui/profile_tab/orders/orders_tab/current.dart';
import 'package:sliver/ui/profile_tab/orders/orders_tab/previous.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                  selectedTabTextColor: Colors.black,
                  tabTextColor: Colors.black,
                  tabs: const [
                    SegmentTab(
                      label: "Previous",
                    ),
                    SegmentTab(
                      label: "Current",
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
                    PreviousScreen(),
                    CurrentScreen(),
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
