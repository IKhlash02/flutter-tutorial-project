// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackAlign12 extends StatelessWidget {
  const StackAlign12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack And Align')),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.black12,
                      )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.black12,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                    ],
                  )),
            ],
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'ini adalah tulisan pada lapisan tengah',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment(0, 0.89),
            child: ElevatedButton(
              onPressed: (() {}),
              child: Text('My Button'),
            ),
          )
        ],
      ),
    );
  }
}
