import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_erico/optional/htpp_request/user_model.dart';

class GetMethod37 extends StatefulWidget {
  const GetMethod37({super.key});

  @override
  State<GetMethod37> createState() => _GetMethod37State();
}

class _GetMethod37State extends State<GetMethod37> {
  User? userResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Api Demo')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage((userResult != null)
                        ? userResult!.avatar
                        : 'https://w0.peakpx.com/wallpaper/327/452/HD-wallpaper-dark-anime-guy-phone.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Id : ${userResult?.id}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Nama : ${userResult?.name}"),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                var number = Random().nextInt(10) + 1;
                User.connectToAPI(number.toString())
                    .then((value) => userResult = value);

                setState(() {});
              },
              child: const Text("GET"))
        ],
      )),
    );
  }
}
