import 'package:flutter/material.dart';

import 'package:learning_erico/qr/qr_code.dart';
import 'package:learning_erico/qr/qr_scan.dart';

class QRHome00 extends StatefulWidget {
  const QRHome00({super.key});

  @override
  State<QRHome00> createState() => _QRHome00State();
}

class _QRHome00State extends State<QRHome00> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[QRCode29(), QRScan33()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/sky.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(child: _widgetOption.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                label: 'QR Code',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                  ),
                  label: 'QR Scan'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent),
      ),
    );
  }
}
