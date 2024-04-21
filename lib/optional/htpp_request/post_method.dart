import 'package:flutter/material.dart';
import 'package:learning_erico/optional/htpp_request/post_result_model.dart';

class PostMethod36 extends StatefulWidget {
  const PostMethod36({super.key});

  @override
  State<PostMethod36> createState() => _PostMethod36State();
}

class _PostMethod36State extends State<PostMethod36> {
  PostResult? postResult;

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
                image: const DecorationImage(
                    image: AssetImage('images/gambar.webp'),
                    fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Id : ${postResult?.id}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Nama : ${postResult?.name}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Job : ${postResult?.job}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("createAt : ${postResult?.created}"),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                PostResult.connectToAPI('Budi', 'teacher')
                    .then((value) => postResult = value);
                setState(() {});
              },
              child: const Text("POST"))
        ],
      )),
    );
  }
}
