import 'package:flutter/material.dart';
import 'package:sliver/constants/shortcuts.dart';

class SelectVoucherWidget extends StatefulWidget {
  final String initialImage1;
  final String initialImage2;
  final Function(String) onImageSelected; // Callback to send the selected image path

  const SelectVoucherWidget({
    super.key,
    required this.initialImage1,
    required this.initialImage2,
    required this.onImageSelected, // Accept the callback
  });

  @override
  _SelectVoucherWidgetState createState() => _SelectVoucherWidgetState();
}

class _SelectVoucherWidgetState extends State<SelectVoucherWidget> {
  late String image1Path;
  late String image2Path;
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    image1Path = widget.initialImage1;
    image2Path = widget.initialImage2;
  }

  void _onImage1Tapped() {
    setState(() {
      image1Path = 'assets/images/voucher50.png';
      image2Path = widget.initialImage2;
      selectedIndex = 1;
    });
    widget.onImageSelected(image1Path); // Send the selected image path
  }

  void _onImage2Tapped() {
    setState(() {
      image2Path = 'assets/images/greenvoucher10.png';
      image1Path = widget.initialImage1;
      selectedIndex = 2;
    });
    widget.onImageSelected(image2Path); // Send the selected image path
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: _onImage1Tapped,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                child: Image.asset(image1Path),
              ),
            ),
            if (selectedIndex == 1)
              SizedBox(
                width: getWidth(context)*0.9,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 26,
                    height: 26,
                    child: Image.asset('assets/images/check.png'),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 17),
        Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: _onImage2Tapped,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                child: Image.asset(image2Path),
              ),
            ),
            if (selectedIndex == 2)
              SizedBox(
                width: getWidth(context)*0.9,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 26,
                    height: 26,
                    child: Image.asset('assets/images/check.png'),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
