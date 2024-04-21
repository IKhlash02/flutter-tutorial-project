import 'package:flutter/material.dart';
import 'package:learning_erico/basic/navigasi_multiple/main_page_navigasi.dart';

class NavigasiLogin16 extends StatelessWidget {
  const NavigasiLogin16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login page')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const NavigasiMain16();
          }));
        },
      )),
    );
  }
}
