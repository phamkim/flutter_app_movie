import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_movie/app/animation/fadeAnimation.dart';
import 'package:flutter_app_movie/app/controllers/home.controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
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
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: listMovieCard(context, controller.movies),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    "Top Trends",
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: listMovieCard(context, controller.movies),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listMovieCard(BuildContext context, List<Movie> movies) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => FadeAnimation(
          0.2,
          MovieCard(
            movie: movies[index],
          )),
      itemCount: movies.length,
    );
  }

  Widget listActor() {
    return ListView.builder(itemBuilder: (_, index) {
      return;
    });
  }
}
