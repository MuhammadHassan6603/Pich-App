import 'package:flutter/material.dart';
import 'package:sliver/widgets/post_widget.dart';
import 'package:velocity_x/velocity_x.dart';

List images = [
  "https://images.unsplash.com/photo-1640951613773-54706e06851d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVzZXJ8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1724004546109-2d68f5873500?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0NXx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1725610147248-4f20f7b13999?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8"
];
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                getPostHeader(context,orientation,images[0]),
                getPostHeader(context,orientation,images[1]),
                getPostHeader(context,orientation,images[2]),
                120.heightBox
              ],
            )
          );
        },
      ),
    );
  }
}
