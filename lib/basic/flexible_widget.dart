import 'package:flutter/material.dart';

class FlexibleWidget11 extends StatelessWidget {
  const FlexibleWidget11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flexible Layout')),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.deepOrange,
                        margin: const EdgeInsets.all(5),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.teal,
                        margin: const EdgeInsets.all(5),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blueAccent,
                        margin: const EdgeInsets.all(5),
                      )),
                ],
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
                margin: const EdgeInsets.all(5),
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.indigo,
                margin: const EdgeInsets.all(5),
              )),
        ],
      ),
    );
  }
}
