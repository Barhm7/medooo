import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  List<bool> iconStates = [false, false, false, false]; // Track icon states
  bool _hasScanned = false;
  String textToShow = ''; // Add this variable to hold dynamic text

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR Scanner Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'قم بتوجيه الكاميرا نحو الرمز المربع لبدء إدارة حاله التوصيل ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Adjust the width as needed
            height: MediaQuery.of(context).size.width * 0.8, // Make it square
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          SizedBox(height: 40), // Spacer
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 50, // Set the width of the circle
                  height: 50, // Set the height of the circle
                  decoration: BoxDecoration(
                    color: iconStates[i]
                        ? Colors.green
                        : Colors.red, // Green if true, red if false
                    shape: BoxShape.circle, // Makes the container circular
                  ),
                  child: Icon(
                    iconStates[i] ? Icons.check : Icons.close,
                    color: Colors.white, // Icon color is white
                  ),
                  alignment:
                      Alignment.center, // Center the icon within the container
                ),
            ],
          ),

          SizedBox(height: 20), // Spacer
          Text(
            textToShow,
            style: TextStyle(fontSize: 18),
          ), // Display dynamic text
          SizedBox(height: 20), // Spacer
          Visibility(
            visible: _hasScanned, // Show button only when scanned
            child: ElevatedButton(
              onPressed: () {
                _toggleButtonState();
              },
              child: Text('اضغط هنا'),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        _hasScanned = true; // Update this based on your logic
      });
    });
  }

  void _toggleButtonState() {
    setState(() {
      _hasScanned = false; // Hide button when clicked
      _toggleIconState(); // Update icon state to green
    });
  }

  void _toggleIconState() {
    setState(() {
      for (int i = 0; i < 4; i++) {
        if (!iconStates[i]) {
          iconStates[i] =
              true; // Update icon state to green for the first non-green icon
          _updateText(i); // Update text based on the icon index
          break;
        }
      }
    });
  }

  void _updateText(int iconIndex) {
    switch (iconIndex) {
      case 0:
        // Update text for the first icon
        setState(() {
          textToShow = 'في الطريق الى نقطة الانطلاق الاولى';
        });
        break;
      case 1:
        // Update text for the first icon
        setState(() {
          textToShow = 'تم اخذ الطلب';
        });
        break;
      case 2:
        // Update text for the second icon
        setState(() {
          textToShow = 'في الطريق الى النقطة الثانية';
        });
        break;
      case 3:
        // Update text for the third icon
        setState(() {
          textToShow = 'وصل الطلب';
        });
        break;
      default:
        // Handle other cases if needed
        break;
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
