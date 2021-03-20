import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:get/get.dart';

class PlayVideoController extends GetxController {
  final Movie movie = Get.arguments;
  String plotText =
      "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";

  List<Movie> movies;
  BetterPlayerController betterPlayerController;
  @override
  void onInit() {
    // TODO: implement onInit
    movies = [
      Movie(
        id: 3,
        title: "Bloodshot",
        year: 2020,
        poster: "assets/images/poster_1.jpg",
        backdrop: "assets/images/backdrop_1.jpg",
        numOfRatings: 150212,
        rating: 7.3,
        criticsReview: 50,
        metascoreRating: 76,
        genra: ["Action", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
      Movie(
        id: 2,
        title: "Ford v Ferrari ",
        year: 2019,
        poster: "assets/images/poster_2.jpg",
        backdrop: "assets/images/backdrop_2.jpg",
        numOfRatings: 150212,
        rating: 8.2,
        criticsReview: 50,
        metascoreRating: 76,
        genra: ["Action", "Biography", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
      Movie(
        id: 1,
        title: "Onward",
        year: 2020,
        poster: "assets/images/poster_3.jpg",
        backdrop: "assets/images/backdrop_3.jpg",
        numOfRatings: 150212,
        rating: 7.6,
        criticsReview: 50,
        metascoreRating: 79,
        genra: ["Action", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
      Movie(
        id: 1,
        title: "Onward",
        year: 2020,
        poster: "assets/images/poster_3.jpg",
        backdrop: "assets/images/backdrop_3.jpg",
        numOfRatings: 150212,
        rating: 7.6,
        criticsReview: 50,
        metascoreRating: 79,
        genra: ["Action", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
      Movie(
        id: 1,
        title: "Onward",
        year: 2020,
        poster: "assets/images/poster_3.jpg",
        backdrop: "assets/images/backdrop_3.jpg",
        numOfRatings: 150212,
        rating: 7.6,
        criticsReview: 50,
        metascoreRating: 79,
        genra: ["Action", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
      Movie(
        id: 1,
        title: "Onward",
        year: 2020,
        poster: "assets/images/poster_3.jpg",
        backdrop: "assets/images/backdrop_3.jpg",
        numOfRatings: 150212,
        rating: 7.6,
        criticsReview: 50,
        metascoreRating: 79,
        genra: ["Action", "Drama"],
        plot: plotText,
        url:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      ),
    ];
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
