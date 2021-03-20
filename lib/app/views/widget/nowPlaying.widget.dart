import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/home.controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import 'package:get/get.dart';

class NowPlaying extends StatelessWidget {
  final List<Movie> movies;
  NowPlaying({Key key, this.movies}) : super(key: key);
  PageController pageController =
      PageController(viewportFraction: 1, keepPage: false, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: movies.map((e) => _buidMovie(context,e)).toList(),
      options: CarouselOptions(
        autoPlay:true,
        viewportFraction:1,
      ),
    );
  }

  Widget _buidMovie(BuildContext context, Movie movie) {
    return GestureDetector(
      onTap: () => Get.to(PlayVideo(), arguments: movie),
      child: Stack(
        children: [
          Hero(
            tag: movie.id,
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: new DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(movie.backdrop)),
                )),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.0,
                    0.9
                  ],
                  colors: [
                    Color(0xFF151C26).withOpacity(1.0),
                    Color(0xFF151C26).withOpacity(0.0)
                  ]),
            ),
          ),
          Positioned(
              bottom: 0.0,
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Icon(
                Icons.play_arrow_outlined,
                color: Color(0xFFf4C10F),
                size: 40.0,
              )),
          Positioned(
              bottom: 30.0,
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 250.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      movie.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          height: 1.5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
