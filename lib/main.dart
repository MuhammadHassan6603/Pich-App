import 'package:flutter/material.dart';
import 'package:sliver/ui/bottom_navbar/bottom.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/bottom',
      routes: {
        '/bottom': (context) => const BottomBar(),
        // '/': (context) => const HomeScreen(),
        // '/orders': (context) => const OrdersScreen(),
        // '/posts': (context) => const PostScreen(),
        // '/previous': (context) => const PreviousScreen(),
      },
      debugShowCheckedModeBanner: false,
      // home: const BottomBar(),
    );
  }
}
