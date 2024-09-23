import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/ui/floating_button_tab/items/fruit_details.dart';
import 'package:sliver/widgets/get_fruit_name.dart';
import 'package:sliver/widgets/item_details_appbar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/shortcuts.dart';
import '../store/store.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool _isVisible = false;

  double _image1Top = 530;
  double _image2Top = 530;
  double _image3Top = 530;
  double _image4Top = 530;
  double _image5Top = 540;

  final double _targetImage1Top = 100;
  final double _targetImage2Top = 220;
  final double _targetImage3Top = 300;
  final double _targetImage4Top = 350;
  final double _targetImage5Top = 100;

  double _image1Left = 200; //watermelon
  double _image2Left = 185; //banana
  double _image3Left = 90; //grape
  double _image4Left = 180; //pear
  double _image5Left = 120; //lemon

  final double _targetImage1Left = 280;
  final double _targetImage2Left = 190;
  final double _targetImage3Left = 70;
  final double _targetImage4Left = 270;
  final double _targetImage5Left = 70;

  bool _image1Reached = false;
  bool _image2Reached = false;
  bool _image3Reached = false;
  bool _image4Reached = false;
  bool _image5Reached = false;

  @override
  void dispose() {

    _isVisible = false;
    super.dispose();
  }

  void _toggleContainer() {
    if (!_isVisible) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds:30 ), () {
      setState(() {
        _image1Top = _targetImage1Top;
        _image2Top = _targetImage2Top;
        _image3Top = _targetImage3Top;
        _image4Top = _targetImage4Top;
        _image5Top = _targetImage5Top;

        _image1Left = _targetImage1Left;
        _image2Left = _targetImage2Left;
        _image3Left = _targetImage3Left;
        _image4Left = _targetImage4Left;
        _image5Left = _targetImage5Left;
      });
    });
    Future.delayed(const Duration(milliseconds: 1100), () {
      setState(() {
        _image1Reached = true;
        _image2Reached = true;
        _image3Reached = true;
        _image4Reached = true;
        _image5Reached = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: getAppBar(context,'Produces','assets/icons/backbox.png'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: IntrinsicHeight(
                      child: Container(
                        width: getWidth(context) * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: const Color(0xFFE9E9E9)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 14),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Fruits Produce",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF00AB59)),
                                      ),
                                      8.widthBox,
                                      Text(
                                        '\$17.54',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF00AB59)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '5 items',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF2F2F2F)),
                                  ),
                                  7.heightBox,
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/yellowshop.png',
                                        height: 21,
                                        width: 21,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Walli Vendor',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF2F2F2F)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: _toggleContainer,
                                child: Container(
                                  width: 83,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: const Color(0XFFF9B233)),
                                  child: Center(
                                    child: Text(
                                      'Add',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFFFFFFFF)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      AnimatedPositioned(
                        top: _image1Top,
                        left: _image1Left,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 85,
                              child:
                                  Hero(
                                      tag:'image1',
                                      child: Image.asset('assets/images/watermelon.png')),
                            ).onTap(() {
                              Navigator.of(context).pop();
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const FruitDetails();
                                  });
                              // Navigator.push(context, MaterialPageRoute(
                              //     fullscreenDialog: true,
                              //     builder: (context)=>FruitDetails()));

                            }),
                            10.heightBox,
                            AnimatedOpacity(
                                opacity: _image1Reached ? 1 : 0,
                                duration: const Duration(milliseconds: 500),
                                child: getFruitName('Watermelon(M)')),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        top: _image2Top,
                        left: _image2Left,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: Image.asset('assets/images/bananas.png'),
                            ),
                            AnimatedOpacity(
                                opacity: _image2Reached ? 1 : 0,
                                duration: const Duration(milliseconds: 500),
                                child: getFruitName('Banana(6)')),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        top: _image3Top,
                        left: _image3Left,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 75,
                              child: Image.asset('assets/images/grapes.png'),
                            ),
                            AnimatedOpacity(
                                opacity: _image3Reached ? 1 : 0,
                                duration: const Duration(milliseconds: 500),
                                child: getFruitName('Red Grapes (500g)')),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        top: _image4Top,
                        left: _image4Left,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: Image.asset('assets/images/peer.png'),
                            ),
                            AnimatedOpacity(
                                opacity: _image4Reached ? 1 : 0,
                                duration: const Duration(milliseconds: 500),
                                child: getFruitName('Peer (500g)')),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        top: _image5Top,
                        left: _image5Left,
                        bottom: 60,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: Image.asset('assets/images/lemon.png'),
                            ),
                            AnimatedOpacity(
                                opacity: _image5Reached ? 1 : 0,
                                duration: const Duration(milliseconds: 500),
                                child: getFruitName('Lemon (250g)')),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 219,
                            height: 140,
                            child: Image.asset('assets/images/emptybasket.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: getWidth(context) * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      child: AnimatedContainer(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: const Color(0xFF00AB59),
                          ),
                          duration: const Duration(milliseconds: 300),
                          height: _isVisible ? 64 : 0,
                          // Change height based on visibility
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Shopping Bag',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFFFFFFFF)),
                                ),
                                const Spacer(),
                                Text(
                                  '\$17.54',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFFFFFFFF)),
                                ),
                              ],
                            ),
                          )),
                    ),
                    9.widthBox,
                    AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 67,
                        height: _isVisible ? 64 : 0,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF9B233),
                            borderRadius: BorderRadius.circular(19)),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Image.asset('assets/images/whiteshop.png'),
                        )).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Store()));
                    }),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
