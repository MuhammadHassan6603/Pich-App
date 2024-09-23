import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:sliver/widgets/get_post_listtile.dart';
import 'package:velocity_x/velocity_x.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
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
            child: Column(
              children: [
                15.heightBox,
                SizedBox(
                  width: getWidth(context) * 0.9,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 26,
                        height: 26,
                        child: Image.asset('assets/images/tree.png'),
                      ),
                      4.widthBox,
                      Text(
                        'PICH',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.brown),
                      ),
                      const SizedBox(
                          height: 26,
                          child: VerticalDivider(
                            thickness: 2,
                            color: Color(0xFF9F3227),
                          )),
                      SizedBox(
                        width: 170,
                        child: Text('Partnership to Improve Community Health',
                            maxLines: 2,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Colors.brown)),
                      )
                    ],
                  ),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getWidth(context) * 0.9,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: Image.asset('assets/images/profile.jpg'),
                          ),
                        ),
                        30.widthBox,
                        Expanded(
                          child: SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Share your healthy options.',
                                // Hint text
                                filled: true,
                                // Enable background fill color
                                fillColor: Colors.grey[1000],
                                // Background color (light grey)
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  // Circular border with radius 19
                                  borderSide:
                                      BorderSide.none, // Remove border outline
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal:
                                        10), // Padding inside the text field
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                30.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getWidth(context) * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getListTile('assets/images/img2.jpg', 'Allison',
                            '2:27 AM - OCT 20,2023'),
                        10.heightBox,
                        Text(
                          'Hi',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        10.heightBox,
                        SizedBox(
                          width: getWidth(context)*0.85,
                          child: Row(
                            children: [
                              IntrinsicWidth(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icons/heart.png',width: 23,height: 23,),
                                      4.widthBox,
                                      Text('0',style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          // fontSize: 15,
                                          color: Colors.grey),)
                                    ],
                                  )),
                              30.widthBox,
                              IntrinsicWidth(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icons/comment2.png',width: 20,height: 20,),
                                      4.widthBox,
                                      Text('0',style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          // fontSize: 15,
                                          color: Colors.grey),)
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: getWidth(context)*0.93,
                    child: const Divider(
                      color: Color(0xFFE9E9E9),
                    )),
                10.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getWidth(context) * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getListTile('assets/images/img3.jpg', 'Steve',
                            '5:36 PM - OCT 13,2023'),
                        10.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IntrinsicHeight(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0,bottom: 10),
                                child: Text(
                                  'Steak is a rich source of high-quality protein, essential for muscle repair and growth.',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black54),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(context)*0.95,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(19),
                                child: Image.asset('assets/images/camera.jpg',fit: BoxFit.cover,),
                              ),
                            )
                          ],
                        ),
                        10.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getWidth(context)*0.85,
                            child: Row(
                              children: [
                                IntrinsicWidth(
                                    child: Row(
                                      children: [
                                        Image.asset('assets/icons/heart.png',width: 23,height: 23,),
                                        4.widthBox,
                                        Text('0',style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            // fontSize: 15,
                                            color: Colors.grey),)
                                      ],
                                    )),
                                30.widthBox,
                                IntrinsicWidth(
                                    child: Row(
                                      children: [
                                        Image.asset('assets/icons/comment2.png',width: 20,height: 20,),
                                        4.widthBox,
                                        Text('0',style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            // fontSize: 15,
                                            color: Colors.grey),)
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: getWidth(context)*0.93,
                    child: const Divider(
                      color: Color(0xFFE9E9E9),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
