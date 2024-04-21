import 'package:flutter/material.dart';

class MediaQuery21 extends StatelessWidget {
  const MediaQuery21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Media Query')),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer,
              )
            : Row(children: generateContainer));
  }

  List<Widget> get generateContainer {
    return <Widget>[
      Container(
        color: Colors.red[400],
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green[400],
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue[400],
        width: 100,
        height: 100,
      ),
    ];
  }
}
