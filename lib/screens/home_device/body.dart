import 'package:flutter/material.dart';
import 'package:medoproject/screens/home_device/fridg.dart';
import 'package:medoproject/screens/home_device/water.dart';

class DeviceHome extends StatelessWidget {
  const DeviceHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: DefaultTabController(
          length: 2, // Number of tabs
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('قسم الاجهزه المنزليه')),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'ثلاجات'), // Second tab
                  Tab(text: 'براد ماء'), // First tab
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // First tab content
                fridgPage(), // Navigate to HandbagsPage
                // Second tab content
                waterPage(), // Navigate to DressesPage
              ],
            ),
          ),
        ),
      ),
    );
  }
}
