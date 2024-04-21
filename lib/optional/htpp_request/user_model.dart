// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id;
  String name;
  String avatar;

  User({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory User.createdUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
      avatar: object['avatar'],
    );
  }

  static Future<User> connectToAPI(String id) async {
    String apiUrl = "https://reqres.in/api/users/$id";

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createdUser(userData);
  }
}
