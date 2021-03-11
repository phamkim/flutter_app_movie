import 'package:get/get.dart';

class HomeController extends GetxController {
  final String title = "Home";
  int selectedCategory = 0;
  int selectedGenre = 0;
  List<String> categories = ["In theater", "Box Office", "Coming Soon","China","Korea"];
  List<String> genres = ["Action", "Crime", "Comedy", "Drama", "Horror", "Animation"];
  void changeSelectedCategory(int index) {
    selectedCategory = index;
    print(genres[selectedGenre]);
    print(categories[selectedCategory]);
    update();
  }
  void changeSelectedGenre(int index) {
    selectedGenre = index;
    print(genres[selectedGenre]);
    print(categories[selectedCategory]);
    update();
  }
}
