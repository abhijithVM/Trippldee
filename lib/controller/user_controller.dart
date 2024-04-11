import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:trippldee/model/repository.dart';
import 'package:trippldee/model/user_model.dart';

class UserListControler extends GetxController {
  ApiRepository apiRepository = ApiRepository();

  List<User>? usersList;
  bool isusersLoaded = false;
  @override
  void onInit() async {
    getUsersListFn();
    super.onInit();
  }

  void getUsersListFn() async {
    usersList = await apiRepository.getUsersList();
    isusersLoaded = true;
    update();
  }
}
