import 'package:flutter/material.dart';

import 'package:learning_erico/optional/htpp_request/get_list.dart';
import 'package:learning_erico/optional/htpp_request/get_method.dart';
import 'package:learning_erico/optional/htpp_request/post_method.dart';

class BottomRequst extends StatefulWidget {
  const BottomRequst({super.key});

  @override
  State<BottomRequst> createState() => _BottomRequstState();
}

class _BottomRequstState extends State<BottomRequst> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
    GetList38(),
    GetMethod37(),
    PostMethod36(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Get List'),
          BottomNavigationBarItem(icon: Icon(Icons.api), label: 'Get Metohd'),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add), label: 'Post Method'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
