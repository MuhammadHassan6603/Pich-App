import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/widgets/get_Recipies.dart';
import 'package:sliver/widgets/item_details_appbar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/shortcuts.dart';
import '../store/store.dart';

class FruitDetails extends StatefulWidget {
  const FruitDetails({super.key});

  @override
  State<FruitDetails> createState() => _FruitDetailsState();
}

class _FruitDetailsState extends State<FruitDetails> {

  bool _isVisible=false;
  int counter=0;

  @override
  void dispose() {
    // Reset visibility when the screen is popped
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

  String selected = 'S';
  void changeSelected(String size) {
    setState(() {
      selected = size;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: getAppBar(context, 'Watermelon', 'assets/icons/backbox.png'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: getWidth(context)*0.5,
                    height: 178,
                    child: Hero(
                        tag: 'image1',
                        child: Image.asset('assets/images/straightmelon.png')),
                  ),
                  SizedBox(
                    width: getWidth(context)*0.5,
                    child: Row(
                      children: [
                        Text('Size',style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFFFFFF)
                        ),),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => changeSelected('S'),
                          child: Container(
                            width: 32,
                            height: 33,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                                color: const Color(0xFFE9E9E9)
                            ),
                            child: Center(
                              child:
                              Text('S',style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: selected == 'S' ? const Color(0xFF00AB59) : const Color(0xFF000000)
                              ),),
                            ),
                          ),
                        ),
                        9.widthBox,
                        GestureDetector(
                          onTap: () => changeSelected('M'),
                          child: Container(
                            width: 32,
                            height: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color(0xFFE9E9E9)
                            ),
                            child: Center(
                              child:
                              Text('M',style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: selected == 'M' ? const Color(0xFF00AB59) : const Color(0xFF000000)
                              ),),
                            ),
                          ),
                        ),
                        9.widthBox,
                        GestureDetector(
                          onTap: () => changeSelected('L'),
                          child: Container(
                            width: 32,
                            height: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color(0xFFE9E9E9)
                            ),
                            child: Center(
                              child:
                              Text('L',style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: selected == 'L' ? const Color(0xFF00AB59) : const Color(0xFF000000)
                              ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  12.heightBox,
                  SizedBox(
                    width: getWidth(context)*0.5,
                    child: Row(
                      children: [
                        Text('Quantity',style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFFFFFF)
                        )),
                        const Spacer(),
                        Container(
                          height: 33,
                          width: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: const Color(0xFFE9E9E9)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  const Icon(Icons.remove).onTap(() {
                                    setState(() {
                                      if (counter > 0) counter--;
                                    });
                                  }),
                                  const Spacer(),
                                  Text(counter.toString()),
                                  const Spacer(),
                                  const Icon(Icons.add).onTap(() {
                                    setState(() {
                                      counter++;
                                    });
                                  }),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  19.heightBox,
        IntrinsicHeight(
          child: Container(
            width: getWidth(context) * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color(0xFFE9E9E9)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Watermelon',
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF00AB59)),
                          ),
                          8.widthBox,
                          Text(
                            '\$5.54',
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF000000)),
                          ),
                        ],
                      ),
                      Text(
                        "Medium",
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
                          4.widthBox,
                          SizedBox(
                              width: 4.5,
                              height: 10,
                              child: Image.asset('assets/icons/arrow_forward.png'))
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
                          color: const Color(0XFFF9B233)
                      ),
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

                  27.heightBox,
                  SizedBox(
                    width: getWidth(context)*0.8,
                    child: Text('Recipies',style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)
                    ),),
                  ),
                  11.heightBox,
                  Container(
                    width: getWidth(context)*0.9,
                    child: Column(
                      children: [
                        getRecipies(context, 'assets/images/recipie1.png', 'Watermelon Freshness', "Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                        13.heightBox,
                        getRecipies(context, 'assets/images/recipie2.png', 'Melo Drink', "Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                        13.heightBox,
                        getRecipies(context, 'assets/images/recipie3.png', 'Melon Margreta', "Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                        ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: getWidth(context)*0.9,
                  child: Row(
                    children: [
                      Expanded(
                        child: AnimatedContainer(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xFF00AB59),
                            ),
                            duration: const Duration(milliseconds: 300),
                            height: _isVisible ? 64 : 0, // Change height based on visibility
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text('Shopping Bag',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFFFFFFFF)
                                  ),),
                                  const Spacer(),
                                  Text('\$17.54',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFFFFFFFF)
                                  ),),
                                ],
                              ),
                            )
                        ),
                      ),
                      9.widthBox,
                      AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 67,
                          height: _isVisible ? 64 : 0,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF9B233),
                              borderRadius: BorderRadius.circular(19)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(17),
                            child: Image.asset('assets/images/whiteshop.png'),
                          )
                      ).onTap((){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Store()));
                      }),
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
