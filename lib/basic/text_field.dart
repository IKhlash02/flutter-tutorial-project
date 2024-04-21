import 'package:flutter/material.dart';

class TextField19 extends StatefulWidget {
  const TextField19({super.key});

  @override
  State<TextField19> createState() => _TextField19State();
}

class _TextField19State extends State<TextField19> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    icon: const Icon(Icons.ac_unit_rounded),
                    fillColor: Colors.blue[50],
                    filled: true,
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    prefixIcon: const Icon(Icons.person),
                    prefixText: 'Username :',
                    prefixStyle: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: 'Nama Kamu',
                    hintText: 'Nama Lengkap',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 5,
                onChanged: ((value) {
                  setState(() {});
                }),
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ));
  }
}
