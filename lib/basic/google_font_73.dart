import 'package:flutter/material.dart';

class GoogleFont73 extends StatelessWidget {
  const GoogleFont73({super.key});

  @override
  Widget build(BuildContext context) {
    Color fontColor = const Color(0xffffb401);

    return Scaffold(
      backgroundColor: const Color(0xff1e252d),
      appBar: AppBar(
        title: const Text('Google Font Demo'),
        backgroundColor: const Color(0xff282f37),
      ),
      body: Center(
          child: Text("I'll keep learning FLutter!",
              style: TextStyle(color: fontColor))),
    );
  }
}
