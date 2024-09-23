import 'package:flutter/material.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> images = [
    'assets/images/img.jpg',
    'assets/images/profile.jpg',
  ];

  List<String> names = [
    'Joe',
    'Jessica',
  ];

  List<String> text = [
    'Hey! Whats up',
    'How are you?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: getWidth(context) * 0.9,
                child: Text(
                  'Conversations',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF000000)),
                )),
          ),
          20.heightBox,
          Expanded(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: ClipOval(child: Image.asset(images[index]))),
                        title: Text(
                          names[index],
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF000000)),
                        ),
                        subtitle: Text(text[index],
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: const Color(0xFFC6BDBD))),
                      ),
                      SizedBox(
                          width: getWidth(context) * 0.9,
                          child: const Divider(color: Color(0xFFe9e9e9)))
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
