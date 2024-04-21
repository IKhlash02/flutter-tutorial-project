import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

class QRCode29 extends StatelessWidget {
  const QRCode29({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/sky.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            margin: const EdgeInsets.fromLTRB(220, 570, 0, 0),
            child: QrImage(
              version: 6,
              data: "https://www.linkedin.com/in/ikhlash-m78/",
              errorCorrectionLevel: QrErrorCorrectLevel.M,
              padding: const EdgeInsets.all(5),
              backgroundColor: Colors.white,
              size: 100,
            )),
      ),
    );
  }
}
