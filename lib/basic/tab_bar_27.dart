import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabBar27 extends StatelessWidget {
  TabBar myTabbar = const TabBar(
      indicator: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border(right: BorderSide(color: Colors.white))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.call),
          text: 'call',
        ),
        Tab(
          icon: Icon(Icons.email),
          text: 'Email',
        )
      ]);

  TabBar27({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('contoh Tab'),
            backgroundColor: const Color(0xff0B5380),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
                child:
                    Container(color: const Color(0xff0B5380), child: myTabbar)),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text('Call Page'),
            ),
            Center(
              child: Text('Email Page'),
            ),
          ]),
        ));
  }
}
