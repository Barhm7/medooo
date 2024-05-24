
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medoproject/details/components/field.dart';
import 'package:medoproject/screens/qr.dart';

class InformationPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text('معلومات المستخدم',style:   GoogleFonts.vazirmatn(
                    fontSize:24,
                    fontWeight: FontWeight.w500,
                  ),)
       ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Center(
              child: Text(
                'يرجى تعبئة المعلومات التالية',
               style:   GoogleFonts.vazirmatn(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'الاسم',
              controller: nameController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'رقم الهاتف',
              controller: phoneController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'العنوان',
              controller: addressController,
            ),
             const SizedBox(height:38),
            Center(
              child: Container(
                  width: 200.0, // Set the desired width
  height: 50.0, // Set the desired height
  decoration: BoxDecoration(
    
    color: Colors.blue, // Background color of the button
    borderRadius: BorderRadius.circular(8.0), // Rounded corners
  ),
  child: TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QRViewExample()),
      );
    },
    child: Text(
      'شراء الان'.toUpperCase(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 17,
      ),
    ),
  ),
)

            ),
          ],
        ),
      ),
    );
  }
}