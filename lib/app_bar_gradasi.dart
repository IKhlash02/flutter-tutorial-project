import 'package:flutter/material.dart';

class AppBarGradasi17 extends StatelessWidget {
  const AppBarGradasi17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: const Text(
          'AppBar Example',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(156, 1, 40, 31),
                    Color.fromARGB(0, 127, 170, 255)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage('images/patern3.png'),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
    );
  }
}
