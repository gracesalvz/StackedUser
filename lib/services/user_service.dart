import 'package:dio/dio.dart';
import 'package:stacked_app/model/user.dart';

class UserService {
  final _dio = Dio();

  Future<List<User>> getUsers() async {
    List<User> users = [];

    try {
      final response = await _dio.get(
        "https://jsonplaceholder.typicode.com/users",
      );

      if (response.statusCode == 500) {
        throw Exception();
      }
      
      List<dynamic> rawUsers = response.data;
        users = rawUsers
          .map(
              (user) => User.fromJson(user),
          )
          .toList();
          
        return users;
      } on Exception catch (e) {
        throw Exception(e);
      }
    }
  }

