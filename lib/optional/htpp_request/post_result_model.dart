// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.created});

  factory PostResult.createdPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiUrl = "https://reqres.in/api/users";

    var apiResult =
        await http.post(Uri.parse(apiUrl), body: {'name': name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createdPostResult(jsonObject);
  }
}
