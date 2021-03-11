import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/download.controller.dart';
import 'package:get/get.dart';

class DownloadPage extends GetView<DownloadController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:  Text("download"),
      ),
    );
  }
}