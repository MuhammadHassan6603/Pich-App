import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver/constants/shortcuts.dart';
import 'package:sliver/widgets/get_store_item.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../order_confirmation/order_confirmation.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  final List<Map<String, String>> allItems = [
    {'image': 'assets/images/fruits.png', 'name': 'Fruits Produce', 'price': '\$17.54', 'details': '5 items'},
    {'image': 'assets/images/fruits.png', 'name': 'Healthy Produce', 'price': '\$10.56', 'details': '5 items'},
    {'image': 'assets/images/bananas.png', 'name': 'Banana', 'price': '\$10.56', 'details': '6'},
    {'image': 'assets/images/watermelon.png', 'name': 'Watermelon', 'price': '\$10.56', 'details': 'M'},
    {'image': 'assets/images/fruits.png', 'name': 'Fruits Produce', 'price': '\$17.54', 'details': '5 items'},
    {'image': 'assets/images/fruits.png', 'name': 'Healthy Produce', 'price': '\$10.56', 'details': '5 items'},
  ];

  List<Map<String, String>> filteredItems = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredItems = allItems;
  }

  void _filterItems(String query) {
    List<Map<String, String>> results = [];
    if (query.isEmpty) {
      results = allItems;
    } else {
      results = allItems.where((item) {
        return item['name']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }

    setState(() {
      filteredItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                10.heightBox,
                Container(
                  width: getWidth(context) * 0.9,
                  height: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xFF00AB59),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _searchController,
                            onChanged: _filterItems, // Filter as user types
                            decoration: InputDecoration(
                              hintText: 'Search items',
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                            ),
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 21,
                          height: 21,
                          child: Image.asset('assets/icons/search_icon.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                16.heightBox,
                ...filteredItems.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: getStoreItem(
                    context,
                    item['image']!,
                    item['name']!,
                    item['price']!,
                    item['details']!,
                  ),
                )),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              width: getWidth(context) * 0.9,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xFF00AB59),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shopping Bag',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          Text(
                            '2 items',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '\$17.54',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ).onTap((){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmation(imagePath: '',)));
            }),
          ),
        ),
      ],
    );
  }
}
