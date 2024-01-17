import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/listInfor/listinfor.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({required this.setResult, super.key});

  final Function setResult;

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  final MobileScannerController controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      controller: controller,
      onDetect: (BarcodeCapture capture) async {
        final List<Barcode> barcodes = capture.barcodes;
        Barcode barcode = barcodes.first;

        if (barcode.rawValue == 'краска лох') {
          widget.setResult(barcode.rawValue);

          await controller.stop().then((value) => controller.dispose());

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => listinfor()));
        }
      },
    );
  }
}
