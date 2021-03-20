import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:get/get.dart';

class PlayVideoController extends GetxController {
  final Movie movie = Get.arguments;
  BetterPlayerController betterPlayerController;
  static const String forBiggerBlazesUrl =
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4";
  @override
  void onInit() {
    // TODO: implement onInit
    BetterPlayerControlsConfiguration controlsConfiguration =
        BetterPlayerControlsConfiguration(
      controlBarColor: Colors.black.withAlpha(200),
      enableSkips: false,
    );
    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
            fit: BoxFit.contain,
            autoPlay: true,
            controlsConfiguration: controlsConfiguration);
    betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    betterPlayerController
        .setupDataSource(BetterPlayerDataSource.network(movie.url));
    super.onInit();
  }
}
