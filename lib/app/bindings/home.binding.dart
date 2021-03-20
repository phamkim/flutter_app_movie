import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PlayVideoController>(() => PlayVideoController());
  }
}
