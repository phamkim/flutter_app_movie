import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  List<Movie> movies;
  final selectedCategory = 0.obs;
  final selectedGenre1 = 3.obs;
  final selectedGenre2 = 0.obs;
  final selectedGenre3 = 2.obs;
  List<String> categories = [
    "In theater",
    "Box Office",
    "Coming Soon",
    "China",
    "Korea"
  ];
  List<String> genres1 = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation",
    "Crime",
    "Animation"
  ];
  List<String> genres2 = [
    "Drama",
    "Horror",
    "Animation",
    "Action",
    "Crime",
    "Comedy" "Animation",
  ];
  List<String> genres3 = ["Comedy", "Drama", "Horror", "Action"];

  String plotText =
      "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";

  void changeSelectedCategory(int index) {
    selectedCategory(index);
    update();
  }

  void changeSelectedGenre(int index, meta) {
    switch (meta) {
      case 1:
        selectedGenre1(index);
        break;
      case 2:
        selectedGenre2(index);
        break;
      case 3:
        selectedGenre3(index);
        break;
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
  }
}
