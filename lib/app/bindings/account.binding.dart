import 'package:flutter_app_movie/app/controllers/account.controller.dart';
import 'package:get/get.dart';

class AccountBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AccountController>(() => AccountController());
  }

}