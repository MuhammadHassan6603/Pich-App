import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:sliver/widgets/billy_vendor.dart';
import 'package:sliver/widgets/floating_header.dart';
import 'package:sliver/widgets/get_list_item.dart';
import 'package:sliver/widgets/get_produces_item.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/get_single_item.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF3F3F3),
          elevation:0,
          toolbarHeight:0
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.heightBox,
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: getWidth(context) * 0.88, child: getHeader(context)),
                  ),
                  24.heightBox,
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: getWidth(context) * 0.84,
                      child: Text(
                        "Nearest Vendor",
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF2F2F2F)),
                      ),
                    ),
                  ),
                  7.heightBox,
                  Align(alignment: Alignment.center, child: billyVendor(context)),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: getWidth(context) * 0.84,
                      child: Row(
                        children: [
                          Text(
                            "Popular Stores",
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF2F2F2F)),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF00AB59)),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 50,
                      width: getWidth(context) * 0.9,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          getListItem('assets/images/redshop.png', 'Billy Vendor'),
                          8.widthBox,
                          getListItem(
                              'assets/images/greenshop.png', 'Jolly\'s Farm Stand'),
                          5.widthBox,
                          getListItem('assets/images/shop3.png', 'Wallmart'),
                        ],
                      ),
                    ),
                  ),
                  19.heightBox,
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(context) * 0.04,
                    ),
                    child: TabBar(
                      physics: NeverScrollableScrollPhysics(),
                        labelColor: const Color(0xFF00AB59),
                        unselectedLabelColor: const Color(0xFF2F2F2F),
                        dividerColor: Colors.transparent,
                        indicatorColor: const Color(0xFF00AB59),
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: -5),
                        tabs: [
                          Text(
                            "Produces",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Single item",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  //FIRST TAB CONTENT
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        20.heightBox,
                        getProducesItem(context,'assets/images/fruits.png','Fruits Produce','5 items','assets/images/yellowshop.png','Walli Vendor','17.54'),
                        17.heightBox,
                        getProducesItem(context,'assets/images/basket2.png','Healthy Produce','5 items','assets/images/greenshop.png','Jolly\'s Farm Stand','10.56'),
                        17.heightBox,
                        getProducesItem(context,'assets/images/basket2.png','Family Produce','10 items','assets/images/greenshop.png','Jolly\'s Farm Stand','22.51'),
                        17.heightBox,
                        getProducesItem(context,'assets/images/basket2.png','Healthy Produce','5 items','assets/images/redshop.png','Billy Vendor','17.52'),
                        17.heightBox,
                      ],
                    ),
                  ),
                  //SECOND TAB CONTENT
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        20.heightBox,
                        getSingleItem(context,'assets/images/watermelon.png','Watermelon','Medium','assets/images/yellowshop.png','Walli Vendor','17.54'),
                        17.heightBox,
                        getSingleItem(context,'assets/images/bananas.png','Banana','6 Banana\'s','assets/images/greenshop.png','Jolly\'s Farm Stand','10.56'),
                        17.heightBox,
                        getSingleItem(context,'assets/images/potato.png','Potato','1 kg','assets/images/greenshop.png','Jolly\'s Farm Stand','3.56'),
                        17.heightBox,
                        getSingleItem(context,'assets/images/grapes.png','Red Grapes','1 item','assets/images/redshop.png','Billy Vendor','8.50'),
                        17.heightBox,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
