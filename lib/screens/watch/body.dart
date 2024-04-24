import 'package:flutter/material.dart';

import 'smart_watch.dart';
import 'watch.dart';

class WatchHome extends StatelessWidget {
  const WatchHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: DefaultTabController(
          length: 2, // Number of tabs
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('قسم الساعات')),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'ساعات ذكيه'), // Second tab
                  Tab(text: 'ساعات حديثه'), // First tab
                ],
              ),
            ),
            body: TabBarView(
              children: [
                // First tab content
                SmartWatchPage(), // Navigate to HandbagsPage
                // Second tab content
                WatchPage(), // Navigate to DressesPage
              ],
            ),
          ),
        ),
      ),
    );
  }
}
