import 'package:flutter/material.dart';
import 'package:trippldee/model/user_model.dart';

class UserListTile extends StatelessWidget {
  final User user;
  const UserListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${user.firstName}. ${user.lastName}"),
    );
  }
}
