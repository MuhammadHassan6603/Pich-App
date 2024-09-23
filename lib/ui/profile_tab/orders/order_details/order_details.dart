import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/widgets/billy_vendor.dart';
import 'package:sliver/widgets/get_orders_container.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../constants/shortcuts.dart';


class OrderDetails extends StatefulWidget {

  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),

        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery
                        .of(context)
                        .size
                        .height,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Image.asset('assets/icons/backbox.png',color: const Color(0xFF2F2F2F),),
                                ).onTap(() {
                                  Navigator.pop(context);
                                }),
                                Text(
                                  'Order Details',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF2F2F2F),),
                                ),
                                const SizedBox(width: 15),
                              ],
                            ),
                          ),
                        ),
                        26.heightBox,




                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getWidth(context) * 0.84,
                            child: Text(
                              "Store Details",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF2F2F2F)),
                            ),
                          ),
                        ),
                        12.heightBox,
                        Align(
                            alignment: Alignment.center,
                            child: billyVendor(context)),
                        15.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getWidth(context) * 0.84,
                            child: Row(
                              children: [
                                Text(
                                  "Order Details",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF2F2F2F)),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 21,
                                  height: 20,
                                  child: Image.asset('assets/images/scooter.png'),
                                ),
                                5.widthBox,
                                Text("12 Jan 2022",style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: const Color(0xFF2F2F2F)),)
                              ],
                            ),
                          ),
                        ),
                        12.heightBox,
                        Align(
                            alignment: Alignment.center,
                            child: getOrdersContainer(context)
                        ),
                        13.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 83,
                            width: getWidth(context)*0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: const Color(0xFFE9E9E9)
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 52,
                                      height: 44,
                                      child: Image.asset('assets/images/bananas.png'),
                                    ),
                                    16.widthBox,
                                    Text("6x Bananas",style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: const Color(0xFF000000)),),
                                    const Spacer(),
                                    Text(
                                      "\$10.56",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: const Color(0xFF00AB59)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        16.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getWidth(context) * 0.84,
                            child: Text(
                              "Vouchers",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF2F2F2F)),
                            ),
                          ),
                        ),
                        13.heightBox,

                        Align(
                          alignment: Alignment.center,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.88,
                                child: Image.asset('assets/images/greenvoucher10.png'),
                              ),
                              SizedBox(
                                  width: getWidth(context)*0.9,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: 26,
                                      height: 26,
                                      child: Image.asset('assets/images/check.png'),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        11.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.88,
                                child: Image.asset('assets/images/greenvoucher10.png'),
                              ),
                              SizedBox(
                                width: getWidth(context)*0.9,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Image.asset('assets/images/check.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                      ],
                    ),)
                  ,
                )
                ,
              ),
            ),
          ],
        )
    );
  }
}
