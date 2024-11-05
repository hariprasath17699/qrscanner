
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Qrcodescanner extends StatefulWidget {
  const Qrcodescanner({super.key, });



  @override
  State<Qrcodescanner> createState() => _QrcodescannerState();
}

class _QrcodescannerState extends State<Qrcodescanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
permissioncheck()async{
  var status = await Permission.camera.status;//logic to check the camera permission
  if(status.isDenied){
    return false;
  }else{
    return true;
  }
}
 onQRViewCreated(QRViewController controller) {
  this.controller = controller;
  controller.scannedDataStream.listen((scanData) {
    setState(() {
      result = scanData;
    });
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:  permissioncheck()==true?Column(
          children: [

            Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: onQRViewCreated,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? Text(
                    'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    : Text('Scan a code'),
              ),
            )
          ],
        ):Text("Please give camera permission"),
      ),
    );
  }
}
