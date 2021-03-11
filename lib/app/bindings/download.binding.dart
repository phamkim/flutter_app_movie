
import 'package:flutter_app_movie/app/controllers/download.controller.dart';
import 'package:get/get.dart';

class DownloadBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DownloadController>(() => DownloadController());
  }

}