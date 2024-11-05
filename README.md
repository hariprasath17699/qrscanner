# qrcodescanner1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
This app is for scanning qrcode using camera added a permission in manifest file for android.

step 1 
add the package for qrcodescanner in pubspec.yaml file
qr_code_dart_scan: ^0.9.2
permission_handler: ^11.3.1
step 2 create a dart file and import the package and use the code snipet

**QRCodeDartScanView(
scanInvertedQRCode: true, // enable scan invert qr code ( default = false)
typeScan: TypeScan.live, // if TypeScan.takePicture will try decode when click to take a picture(default TypeScan.live)
onCapture: (Result result) {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Qrdataview(qrtext: result.text,)));
},
):Text("Please give the proper permission")
),**

step 3
create another page and dart file and add the text view and show the result.

step 4 

add the permission in manifest file.
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
