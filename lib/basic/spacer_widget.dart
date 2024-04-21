import 'package:flutter/material.dart';

class SpacerWidget14 extends StatelessWidget {
  const SpacerWidget14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer Widget')),
      body: Center(
          child: Row(
        children: [
          const Spacer(
            flex: 4,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
          const Spacer(
            flex: 3,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          const Spacer(flex: 2),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      )),
    );
  }
}
