import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trippldee/controller/user_controller.dart';
import 'package:trippldee/view/common_widgets.dart/user_display.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListControler>(
      init: Get.put(UserListControler()),
      initState: (_) {},
      builder: (userListControler) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                userListControler.isusersLoaded
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height * .9,
                        child: ListView.builder(
                          itemCount: userListControler.usersList?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ProfileInfo(
                              user: userListControler.usersList![index],
                            );
                          },
                        ),
                      )
                    : const Center(
                        child: Text(
                          "Loading.....",
                          textAlign: TextAlign.center,
                        ),
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
