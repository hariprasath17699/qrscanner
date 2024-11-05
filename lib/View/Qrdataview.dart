import 'package:flutter/material.dart';

class Qrdataview extends StatefulWidget {
  String qrtext;

   Qrdataview({super.key,required this.qrtext});

  @override
  State<Qrdataview> createState() => _QrdataviewState();
}

class _QrdataviewState extends State<Qrdataview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.qrtext),//showing the text in qr
      ),
    );
  }
}
