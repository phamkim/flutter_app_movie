import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<PlayVideoController>(() => PlayVideoController());
  }
}
