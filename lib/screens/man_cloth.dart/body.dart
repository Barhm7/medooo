import 'package:flutter/material.dart';
import 'package:medoproject/screens/man_cloth.dart/shirt.dart';

import 'jacket.dart';



class ClothMenHome extends StatelessWidget {
  const ClothMenHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: DefaultTabController(
          length: 2, // Number of tabs
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('القسم الرجالي')),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'جاكيتات'), // First tab
                  Tab(text: 'قمصان'), // Second tab
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // First tab content
                JacketPage(), // Navigate to HandbagsPage
                // Second tab content
                ShirtPage(), // Navigate to DressesPage
              ],
            ),
          ),
        ),
      ),
    );
  }
}
