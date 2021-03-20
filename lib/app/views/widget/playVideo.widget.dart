import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:get/get.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import '../../../constants.dart';

class PlayVideo extends GetView {
  @override
  Widget build(BuildContext context) {
    PlayVideoController controller = Get.put(PlayVideoController());
    Size size = Get.size;
    final movie = controller.movie;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
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
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          genres(movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }

  Widget genres(Movie movie) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
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
        vertical: kDefaultPadding / 4, // 5 padding top and bottom
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(color: kTextColor.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
