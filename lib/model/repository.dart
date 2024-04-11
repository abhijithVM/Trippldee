import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trippldee/model/user_model.dart';

class ApiRepository {
  Dio client = Dio();

  Future<List<User>> getUsersList() async {
    List<User>? usersList = [];
    int userID = 1;
    final response = await client.get("https://reqres.in/api/users/$userID");
    debugPrint("test Users list *******$response");
    for (var element in (response.data['data'] as List)) {
      usersList.add(
        User.fromJson(element),
      );
    }

    return usersList;
  }
}
