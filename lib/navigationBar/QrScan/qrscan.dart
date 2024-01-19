import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/listInfor/listinfor.dart';
import 'package:zoonsk/image/image.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  final MobileScannerController controller = MobileScannerController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  double _zoomFactor = 0.0;
  @override
  Widget build(BuildContext context) {
    final scanWindow = Rect.fromCenter(
      center: MediaQuery.of(context).size.center(Offset.zero),
      width: 25,
      height: 25,
    );
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Image(image: appimages.ramka),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 255,
                  height: 255,
                  child: MobileScanner(
                    // scanWindow: scanWindow,
                    controller: controller,
                    onDetect: (BarcodeCapture capture) async {
                      final List<Barcode> barcodes = capture.barcodes;
                      Barcode barcode = barcodes.first;

                      if (barcode.rawValue == 'краска лох') {
                        await controller
                            .stop()
                            .then((value) => controller.dispose());

                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const listinfor()));
                      }
                    },
                  ),
                ),
              ),
              CustomPaint(
                painter: ScannerOverlay(scanWindow),
              ),
              const Text(
                'Сканирование',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'museo700',
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Slider(
                  value: _zoomFactor,
                  onChanged: (value) {
                    setState(() {
                      _zoomFactor = value;
                      controller.setZoomScale(value);
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ValueListenableBuilder<TorchState>(
                      valueListenable: controller.torchState,
                      builder: (context, value, child) {
                        final Color iconColor;

                        switch (value) {
                          case TorchState.off:
                            iconColor = Colors.black;
                            break;
                          case TorchState.on:
                            iconColor = Colors.yellow;
                            break;
                        }

                        return IconButton(
                          onPressed: () => controller.toggleTorch(),
                          icon: Icon(
                            Icons.flashlight_on,
                            color: iconColor,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      onPressed: () => controller.switchCamera(),
                      icon: const Icon(
                        Icons.cameraswitch_rounded,
                        color: Color.fromARGB(255, 15, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScannerOverlay extends CustomPainter {
  ScannerOverlay(this.scanWindow);

  final Rect scanWindow;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPath = Path()..addRect(Rect.largest);
    final cutoutPath = Path()..addRect(scanWindow);

    final backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    final backgroundWithCutout = Path.combine(
      PathOperation.difference,
      backgroundPath,
      cutoutPath,
    );
    canvas.drawPath(backgroundWithCutout, backgroundPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
