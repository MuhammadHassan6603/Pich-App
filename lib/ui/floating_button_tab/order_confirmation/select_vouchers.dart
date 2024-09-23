import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/ui/floating_button_tab/order_confirmation/order_confirmation.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/shortcuts.dart';
import '../../../widgets/get_orders_appbar.dart';
import '../../../widgets/get_orders_button.dart';
import '../../../widgets/select_vouchers.dart';

class SelectVouchers extends StatefulWidget {
  const SelectVouchers({super.key});

  @override
  State<SelectVouchers> createState() => _SelectVouchersState();
}

class _SelectVouchersState extends State<SelectVouchers> {
  String selectedImagePath = ''; // Variable to store the selected image path

  void _onImageSelected(String imagePath) {
    setState(() {
      selectedImagePath = imagePath; // Update the selected image path
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: getOrdersAppBar(context, 'Select Vouchers', 'assets/icons/backbox.png'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.83,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getWidth(context) * 0.84,
                    child: Text(
                      "Voucher Amount Required",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F2F),
                      ),
                    ),
                  ),
                ),
                12.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getWidth(context) * 0.9,
                    height: 72,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00AB59),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order Amount',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                              Text(
                                'Select a voucher worth this or more',
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Container(
                            width: 94,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xFFF9B233),
                            ),
                            child: Center(
                              child: Text(
                                '\$17.54',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                15.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getWidth(context) * 0.84,
                    child: Text(
                      "Available Vouchers",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F2F),
                      ),
                    ),
                  ),
                ),
                12.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SelectVoucherWidget(
                        initialImage1: 'assets/images/whitevoucher50.png',
                        initialImage2: 'assets/images/whitevoucher10.png',
                        onImageSelected: _onImageSelected, // Pass the callback
                      ),
                    ],
                  ),
                ),
                19.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: getOrdersButton(
                    context,
                    'Get More Vouchers',
                    const Color(0xFF000000),
                    const Color(0xFFFFFFFF),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: getOrdersButton(
                    context,
                    'Done',
                    const Color(0xFFF9B233),
                    const Color(0xFFFFFFFF),
                  ).onTap(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderConfirmation(imagePath: selectedImagePath), // Pass the selected image path
                      ),
                    );
                  }),
                ),
                18.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
