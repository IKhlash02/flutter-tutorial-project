// ignore: file_names
import 'package:flutter/material.dart';

class Draggable15 extends StatefulWidget {
  const Draggable15({super.key});

  @override
  State<Draggable15> createState() => _Draggable15State();
}

class _Draggable15State extends State<Draggable15> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.black26;
  bool isAcepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan Draggable')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                  data: color1,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  )),
              Draggable<Color>(
                  data: color2,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ))
            ],
          ),
          DragTarget<Color>(
              onWillAccept: ((value) => true),
              onAccept: (value) {
                isAcepted = true;
                targetColor = value;
              },
              builder: ((context, candidateData, rejectedData) {
                return (isAcepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ),
                      )
                    : const SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 0,
                        ),
                      );
              }))
        ],
      ),
    );
  }
}
