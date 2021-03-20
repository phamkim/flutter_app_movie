
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_movie/app/controllers/home.controller.dart';
import 'package:flutter_app_movie/app/views/widget/listMovieCard.widget.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import 'package:flutter_app_movie/constants.dart';

import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final height = Get.size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      //Creating the Chip list
      body: Column(
        children: [
          Container(
            height: height / 4,
            width: double.infinity,
            child: NowPlaying(
              movies: controller.movies,
            ),
          ),
          Flexible(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    "All",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListMovieCard(movies:controller.movies,),
                ),
                CastAndCrew(casts: controller.movies[0].cast),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    "Top Trends",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: ListMovieCard(movies:controller.movies,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

