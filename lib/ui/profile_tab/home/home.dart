import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/ui/profile_tab/orders/orders.dart';
import 'package:sliver/ui/profile_tab/posts/posts.dart';
import 'package:sliver/ui/profile_tab/vouchers/vouchers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    backgroundColor: const Color(0xFFF3F3F3),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Profile',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize:
                              orientation == Orientation.portrait ? 20 : 24,
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/appBarIcon.png'),
                        ),
                      ),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: orientation == Orientation.portrait
                              ? const EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 0)
                              : const EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              // width: MediaQuery.of(context).size.width * 0.95,
                              width: orientation == Orientation.portrait
                                  ? MediaQuery.of(context).size.width * 0.9
                                  : MediaQuery.of(context).size.width * 0.9,
                              height:
                                  orientation == Orientation.portrait ? 121 : 140,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF00AB59),
                                  borderRadius: BorderRadius.circular(19)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/profile.jpg",
                              fit: BoxFit.contain,
                              width: orientation == Orientation.portrait
                                  ? 80
                                  : 100,
                              height: orientation == Orientation.portrait
                                  ? 80
                                  : 100,
                            ),
                          ),
                        ),
                        Positioned(
                          top: orientation == Orientation.portrait ? 80 : 100,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Jessica Melinda",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: orientation == Orientation.portrait ? 105 : 125,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize
                                  .min,
                              children: [
                                SizedBox(
                                  width: 12,
                                  height: 12,
                                  child: Image.asset('assets/icons/loc.png'),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Los Angeles",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 35,
                          left: 10,
                          right: 10,
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.transparent),
                              ),
                            ),
                            child: TabBar(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              unselectedLabelColor: const Color(0xFFFFFFFF),
                              labelColor: const Color(0xFFF9B233),
                              dividerColor: Colors.transparent,
                              indicator: const CircularTabIndicator(
                                color: Color(0xFFF9B233),
                                radius: 6,
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "Posts",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Vouchers",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Orders",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: const Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      children: [
                        PostScreen(),
                        Vouchers(),
                        OrdersScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CircularTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircularTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircularPainter(this, onChanged);
  }
}

class _CircularPainter extends BoxPainter {
  final CircularTabIndicator decoration;

  _CircularPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = decoration.color
      ..style = PaintingStyle.fill;

    final Offset circleOffset = Offset(
      offset.dx + configuration.size!.width / 2,
      configuration.size!.height - decoration.radius * 0.8,
    );

    canvas.drawCircle(circleOffset, decoration.radius, paint);
  }
}
