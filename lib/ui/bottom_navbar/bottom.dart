import 'package:flutter/material.dart';
import 'package:sliver/ui/chats/chat_screen.dart';
import 'package:sliver/ui/floating_button_tab/floating_button.dart';
import 'package:sliver/ui/posts/posts.dart';
import 'package:sliver/ui/profile_tab/home/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 3;
  bool isFloatingButtonTapped = false;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  final List<Widget> screens = [
    const PostScreen(),
    const ChatScreen(),
    const Placeholder(),
    const HomeScreen(),
    const Floating(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            // Portrait layout
            return ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(19), bottom: Radius.circular(19)),
                ),
                child: BottomAppBar(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const PostScreen();
                                currentTab = 0;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/document.png',
                                color: currentTab == 0
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const ChatScreen();
                                currentTab = 1;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/comment.png',
                                color: currentTab == 1
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const Placeholder();
                                currentTab = 2;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/search.png',
                                color: currentTab == 2
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const HomeScreen();
                                currentTab = 3;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/profile.png',
                                color: currentTab == 3
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            // Landscape layout
            return ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(19), bottom: Radius.circular(19)),
                ),
                child: BottomAppBar(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const PostScreen();
                                currentTab = 0;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/document.png',
                                color: currentTab == 0
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const ChatScreen();
                                currentTab = 1;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/comment.png',
                                color: currentTab == 1
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const Placeholder();
                                currentTab = 2;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/search.png',
                                color: currentTab == 2
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped=false;
                                currentScreen = const HomeScreen();
                                currentTab = 3;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'assets/icons/profile.png',
                                color: currentTab == 3
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
      floatingActionButton: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Stack(
              children: [
                Positioned(
                  bottom: 70,
                  left: MediaQuery.of(context).size.width / 2 - 29,
                  child: SizedBox(
                    width: 58,
                    height: 58,
                    child: FloatingActionButton(
                      backgroundColor:
                          isFloatingButtonTapped ? Colors.green : Colors.black,
                      onPressed: () {
                        setState(() {
                          isFloatingButtonTapped = true;
                          currentScreen =
                              const Floating();
                          currentTab = 4;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        width: 18.32,
                        height: 18.32,
                        child: Image.asset('assets/icons/house.png',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Stack(
              children: [
                Positioned(
                  bottom: 55,
                  left: MediaQuery.of(context).size.width / 2 - 40,
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FloatingActionButton(
                      backgroundColor:
                          isFloatingButtonTapped ? Colors.green : Colors.black,
                      onPressed: () {
                        setState(() {
                          isFloatingButtonTapped = true;
                          currentScreen =
                              const Floating();
                          currentTab = 4;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        width: 18.32,
                        height: 18.32,
                        child: Image.asset('assets/icons/house.png',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
