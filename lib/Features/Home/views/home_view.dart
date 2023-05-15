import 'package:flutter/material.dart';

import '../wedgits/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      floatingActionButton: FloatingActionButton(
       onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
    );
  }
}

