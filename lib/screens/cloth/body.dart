import 'package:flutter/material.dart';

import 'dress.dart';
import 'hand_bag.dart';

class ClothHome extends StatelessWidget {
  const ClothHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: DefaultTabController(
          length: 2, // Number of tabs
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Top Navigation Example'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'حقيبة يد'), // First tab
                  Tab(text: 'فساتين'), // Second tab
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // First tab content
                HandbagsPage(), // Navigate to HandbagsPage
                // Second tab content
                DressesPage(), // Navigate to DressesPage
              ],
            ),
          ),
        ),
      ),
    );
  }
}
