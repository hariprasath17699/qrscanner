import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrcodegenerator extends StatefulWidget {
  const Qrcodegenerator({super.key});

  @override
  State<Qrcodegenerator> createState() => _QrcodegeneratorState();
}

class _QrcodegeneratorState extends State<Qrcodegenerator> {
  TextEditingController qrtext = TextEditingController();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            TextField(
              controller: qrtext,
            ),
            MaterialButton(child: Text("Generate QR"),onPressed: (){

              setState(() {
                text = qrtext.text;
              });
            }),
            Center(
              child: QrImageView(
                data: text,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
