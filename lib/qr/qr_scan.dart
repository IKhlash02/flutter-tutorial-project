import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QRScan33 extends StatefulWidget {
  const QRScan33({super.key});

  @override
  State<QRScan33> createState() => _QRScan33State();
}

class _QRScan33State extends State<QRScan33> {
  String text = "hasil scan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Scan')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          ElevatedButton(
              onPressed: () async {
                text = (await scanner.scan())!;
                setState(() {});
              },
              child: const Text('Scan'))
        ],
      )),
    );
  }
}
