
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_movie/app/animation/fadeAnimation.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:flutter_app_movie/app/views/widget/movieCard.widget.dart';

class ListMovieCard extends StatelessWidget{
  final List<Movie> movies;
  ListMovieCard({Key key,this.movies}):super(key: key);
  @override
  Widget build(BuildContext context) {
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
}