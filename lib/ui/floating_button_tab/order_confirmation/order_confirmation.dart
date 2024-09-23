import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/ui/floating_button_tab/order_confirmation/select_vouchers.dart';
import 'package:sliver/widgets/billy_vendor.dart';
import 'package:sliver/widgets/get_dotted_border.dart';
import 'package:sliver/widgets/get_orders_container.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/shortcuts.dart';
import '../../../widgets/get_orders_appbar.dart';
import '../../../widgets/get_orders_button.dart';


class OrderConfirmation extends StatefulWidget {
  final String imagePath;

  const OrderConfirmation({super.key, required this.imagePath});

  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: getOrdersAppBar(
            context, 'Order Confirmtion', 'assets/icons/backbox.png'),
      ),
      body: SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery
                    .of(context)
                    .size
                    .height * 0.83,
              ),
              child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    // 26.heightBox,
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
                      child: Text(
                        "Order Items",
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
                      child: getOrdersContainer(context)
                  ),
                  15.heightBox,
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
                      if (widget.imagePath.isEmpty)
                        getDottedBOrder(context).onTap(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectVouchers()));
                        })
                      else
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getWidth(context)*0.9,
                            child: Image.asset(
                              widget.imagePath,
                            ),
                          ),
                        ),
          20.heightBox,

          const Spacer(),
      Align(
          alignment: Alignment.center,
          child: getOrdersButton(context, 'Next', const Color(0xFFF9B233),
              const Color(0xFFFFFFFF))),
      18.heightBox
      ],
    ),)
    ,
    )
    ,
    )
    );
  }
}
