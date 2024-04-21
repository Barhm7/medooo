import 'package:flutter/material.dart';
import 'package:medoproject/screens/pc/laptop.dart';

import 'ex.dart';



class PcHome extends StatelessWidget {
  const PcHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: DefaultTabController(
          length: 2, // Number of tabs
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('قسم الحاسبات')),
              bottom: const TabBar(
                tabs: [
               
                  Tab(text: 'ايكسسوارات'), // Second tab
                     Tab(text: 'لابتوبات'), // First tab
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // First tab content
                ExPage(), // Navigate to HandbagsPage
                // Second tab content
                LaaptopPAge(), // Navigate to DressesPage
              ],
            ),
          ),
        ),
      ),
    );
  }
}
