import 'package:flutter_app_movie/app/controllers/dashboard.controller.dart';
import 'package:flutter_app_movie/app/controllers/home.controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
  }

}