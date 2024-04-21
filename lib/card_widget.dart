import 'package:flutter/material.dart';

class CardWidget18 extends StatelessWidget {
  const CardWidget18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.account_box, 'account box'),
            buildCard(Icons.time_to_leave, 'time')
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
