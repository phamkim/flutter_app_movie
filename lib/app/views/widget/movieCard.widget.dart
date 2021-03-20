import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:flutter_app_movie/app/views/widget/widget.dart';
import 'package:flutter_app_movie/constants.dart';
import 'package:get/get.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  MovieCard({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final a = MediaQuery.of(context).size.height;
    return FittedBox(
      child: GestureDetector(
        onTap: () => Get.to(() => PlayVideo(), arguments: movie),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: a / 5,
                  margin: EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image(
                        image: AssetImage(movie.poster), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                    bottom: 0.0,
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Icon(
                      Icons.play_arrow,
                      color: Color(0xffffffff),
                      size: 40.0,
                    )),
                Positioned(
                    top: 0,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movie.title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: a / 80),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: a / 200,
            ),
            Container(
              width: a / 10,
              margin: EdgeInsets.only(left: a / 150),
              child: Text(
                movie.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: a / 80),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: a / 50,
            ),
          ],
        ),
      ),
    );
  }
}
