import 'package:flutter/material.dart';

List<String> list = <String>['ikhlash', 'budi', 'eko'];

class DrapDown56 extends StatefulWidget {
  const DrapDown56({super.key});

  @override
  State<DrapDown56> createState() => _DrapDown56State();
}

class _DrapDown56State extends State<DrapDown56> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drop Down Demo')),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: DropdownButton(
              isExpanded: true,
              style: const TextStyle(fontSize: 20, color: Colors.purple),
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Text(
            dropdownValue,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
