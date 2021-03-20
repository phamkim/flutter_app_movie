import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/animation/fadeAnimation.dart';
import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import 'package:flutter_app_movie/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    final height = Get.size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: () {})
        ],
      ),
      body: GetBuilder<SearchController>(
        builder: (_) {
          return Column(
            children: [
              Category(
                listCategory: controller.categories,
                selectedIndex: controller.selectedCategory.toInt(),
              ),
              Genres(
                listGenres: controller.genres1,
                indexSelected: controller.selectedGenre1.toInt(),
                meta: 1,
              ),
              Genres(
                listGenres: controller.genres2,
                indexSelected: controller.selectedGenre2.toInt(),
                meta: 2,
              ),
              Genres(
                listGenres: controller.genres3,
                indexSelected: controller.selectedGenre3.toInt(),
                meta: 3,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 3,
                  itemCount: controller.movies.length,
                  itemBuilder: (context, index) => FadeAnimation(
                      0.2, _buildVideo(context, controller.movies[index])),
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ),
              )
            ],
          );
        },
      ),
    );
  }

  _buildVideo(BuildContext context, Movie movie) {
    return GestureDetector(
        onTap: () => Get.to(() => PlayVideo(), arguments: movie),
        child: FittedBox(
          child: MovieCard(
            movie: movie,
          ),
        ));
  }
}
