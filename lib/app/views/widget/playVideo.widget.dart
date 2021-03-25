import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:get/get.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import '../../../constants.dart';
import 'listMovieCard.widget.dart';

class PlayVideo extends GetView {
  @override
  Widget build(BuildContext context) {
    PlayVideoController controller = Get.put(PlayVideoController());
    Size size = Get.size;
    final movie = controller.movie;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child:
                BetterPlayer(controller: controller.betterPlayerController),
              ),
              SafeArea(
                  child: BackButton(
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(height: kDefaultPadding),
          TitleDurationAndFabBtn(movie: movie),
          genres(movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding ,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text(
              "recommend",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListMovieCard(movies:controller.movies),
          ),
        ],
      ),
    );
  }

  Widget genres(Movie movie) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => genreCard(
            movie.genra[index],
          ),
        ),
      ),
    );
  }

  Widget genreCard(String genre) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/4, // 5 padding top and bottom
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        genre,
        style: TextStyle(color: kTextColor.withOpacity(0.8), fontSize: 16),
      ),
    );
  }


}
