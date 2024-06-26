import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medoproject/screens/home_device/body.dart';

import 'cloth/body.dart';
import 'man_cloth.dart/body.dart';
import 'pc/body.dart';
import 'watch/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'الصفحه الرئيسيه',
            style: GoogleFonts.vazirmatn(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black, // Set the text color to white
            ),
          ),
        ),
      ),
      body: ItemFilter2(),
    );
  }
}

class ItemFilter2 extends StatelessWidget {
  const ItemFilter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments
    const SizedBox(height: 25);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ItemContainer(
          name: ' قسم الساعات',
          imagePath: 'assets/images/imagecopy.png',
          onTap: () {
            // Pass 1 and the selectedValues to the next page
            Get.to(
              const WatchHome(),
            );
          },
        ),
        const SizedBox(height: 25),
        ItemContainer(
          name: ' قسم الاجهزه المنزليه',
          imagePath: 'assets/images/image.png',
          onTap: () {
            // Pass 1 and the selectedValues to the next page
            Get.to(
              const DeviceHome(),
            );
          },
        ),
        const SizedBox(height: 25),
        ItemContainer(
          name: 'القسم النسائى',
          imagePath: 'assets/images/images.jpg',
          onTap: () {
            // Pass 1 and the selectedValues to the next page
            Get.to(
              const ClothHome(),
            );
          },
        ),
        const SizedBox(height: 25),
        ItemContainer(
          name: 'القسم الرجالي',
          imagePath: 'assets/images/download (1).jpg',
          onTap: () {
            // Pass 1 and the selectedValues to the next page
            Get.to(
              const ClothMenHome(),
            );
          },
        ),
        const SizedBox(height: 25),
        ItemContainer(
          name: 'قسم الحاسبات ',
          imagePath: 'assets/images/pcStore.jpg',
          onTap: () {
            // Pass 5 and the selectedValues to the next page
            Get.to(
              PcHome(),
            );
          },
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

class ItemContainer extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback onTap;

  ItemContainer({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  name,
                  style: GoogleFonts.vazirmatn(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ), // Using Vazir-Medium
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 150, // Set a fixed width for the image

              height: 100, // Set a fixed height for the image
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(8), // Border radius for the image
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
