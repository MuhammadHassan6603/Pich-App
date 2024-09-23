import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:sliver/ui/floating_button_tab/store/tabs/all_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  child: Container(
                    height: 200,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(19),
                            bottomRight: Radius.circular(19),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 183,
                            color: const Color(0xFFF9B233),
                            child: Column(
                              children: [
                                // Add your title or other widgets here
                                80.heightBox,
                                SizedBox(
                                  width: getWidth(context)*0.8,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset('assets/icons/backbox.png'),
                                      ).onTap((){
                                        Navigator.pop(context);
                                      }),
                                      13.widthBox,
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Walli Vendor Store',style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: const Color(0xFFFFFFFF)
                                          ),),
                                          Text('Main Street Downtown',style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: const Color(0xFFFFFFFF)
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 137,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: getWidth(context)*0.8,
                              child: TabBar(
                                unselectedLabelColor: const Color(0xFFFFFFFF),
                                labelColor: const Color(0xFF00AB59),
                                dividerColor: Colors.transparent,
                                indicator: const CircularTabIndicator(
                                  color: Color(0xFF00AB59),
                                  radius: 6,
                                ),
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "All",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Produces",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Items",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              AllScreen(), // Replace with your actual content
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 187; // Height of your pinned header
  @override
  double get maxExtent => 187; // Same as minExtent for pinned header

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true; // Always rebuild when the header changes
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
