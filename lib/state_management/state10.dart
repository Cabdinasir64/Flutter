import 'dart:convert';
import 'package:http/http.dart' as http;

class UserModel10 {
  final int id;
  final String name;
  final String email;
  final String phone;

  UserModel10({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory UserModel10.fromJson(Map<String, dynamic> json) {
    return UserModel10(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}

class UserApiService10 {
  Future<UserModel10?> getSingleUser() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return UserModel10.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
