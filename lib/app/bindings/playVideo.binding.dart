import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class PlayVideoBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PlayVideoController>(() => PlayVideoController());
  }
}
