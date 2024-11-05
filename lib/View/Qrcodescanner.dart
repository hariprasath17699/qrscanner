
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

import 'Qrdataview.dart';

class Qrcodescanner extends StatefulWidget {
  const Qrcodescanner({super.key, });



  @override
  State<Qrcodescanner> createState() => _QrcodescannerState();
}

class _QrcodescannerState extends State<Qrcodescanner> {
permissioncheck()async{
  var status = await Permission.camera.status;//logic to check the camera permission
  if(status.isDenied){
    return false;
  }else{
    return true;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
        Center(
          child:
      permissioncheck()==true?//checking the camera permission
          QRCodeDartScanView(
            scanInvertedQRCode: true, // enable scan invert qr code ( default = false)
            typeScan: TypeScan.live, // if TypeScan.takePicture will try decode when click to take a picture(default TypeScan.live)
            onCapture: (Result result) {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Qrdataview(qrtext: result.text,)));
            },
          ):Text("Please give the proper permission")
        ),
          ],
        ),
      ),
    );
  }
}
