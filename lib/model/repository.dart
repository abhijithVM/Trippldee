import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trippldee/model/user_model.dart';

class ApiRepository {
  Dio client = Dio();

  Future<List<User>> getUsersList() async {
    List<User>? usersList = [];
   
    final response = await client.get(
      "https://reqres.in/api/users/{userId}",
      // options: Options(
      //   headers: {
      //     'Content-Type': 'application/json',
      //     'Accept': 'application/json',
      //   },
      // ),
    );
    debugPrint("test Users list *******$response");
    for (var element in (response.data['data'] as List)) {
      usersList.add(
        User.fromJson(element),
      );
    }

    return usersList;
  }
}
