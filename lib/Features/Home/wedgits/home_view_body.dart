import 'package:flutter/material.dart';

import '../../wedgits/app_header.dart';
import 'card_item_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const AppHeader(
            title: "Notes",
            icon: Icons.search,
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(child: CardItmesListView()),
        ],
      ),
    ));
  }
}
