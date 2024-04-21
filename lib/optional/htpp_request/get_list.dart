import 'package:flutter/material.dart';
import 'package:learning_erico/optional/htpp_request/list_user_model.dart';

class GetList38 extends StatefulWidget {
  const GetList38({super.key});

  @override
  State<GetList38> createState() => _GetList38State();
}

class _GetList38State extends State<GetList38> {
  List<User> userResult = [];
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Api List')),
      body: Center(
          child: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 30)),
                  onPressed: () {
                    User.getUsers('2').then((users) {
                      setState(() {
                        userResult = users;
                      });
                    });
                  },
                  child: const Text("GET")),
            ),
          ),
          Container(),
          const SizedBox(
            height: 20,
          ),
          (userResult.isNotEmpty)
              ? Container(
                  margin: const EdgeInsets.fromLTRB(10, 100, 10, 10),
                  child: ApiImage(userResult: userResult))
              : const Center(child: CircularProgressIndicator()),
        ],
      )),
    );
  }
}

class ApiImage extends StatelessWidget {
  const ApiImage({
    Key? key,
    required this.userResult,
  }) : super(key: key);

  final List<User> userResult;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userResult.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Spacer(flex: 5),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage((userResult.isNotEmpty)
                              ? userResult[index].avatar
                              : 'https://w0.peakpx.com/wallpaper/327/452/HD-wallpaper-dark-anime-guy-phone.jpg'),
                          fit: BoxFit.cover)),
                ),
                const Spacer(flex: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text((userResult.isNotEmpty)
                          ? "Id : ${userResult[index].id}"
                          : "kosong"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text((userResult.isNotEmpty)
                          ? "Nama : ${userResult[index].name}"
                          : "kosong"),
                    ),
                  ],
                ),
                const Spacer(flex: 5),
              ],
            ),
          );
        });
  }
}
