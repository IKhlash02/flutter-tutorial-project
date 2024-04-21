import 'package:flutter/material.dart';

class ListListview09 extends StatefulWidget {
  const ListListview09({super.key});

  @override
  State<ListListview09> createState() => _ListListview09State();
}

class _ListListview09State extends State<ListListview09> {
  List<Widget> widgets = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan listview")),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      widgets.add(Text(
                        "Data ke-$counter",
                        style: const TextStyle(fontSize: 30),
                      ));
                      counter++;
                    });
                  }),
                  child: const Text("Tambah Data")),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  }),
                  child: const Text("Hapus Data")),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
