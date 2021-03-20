import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:flutter_app_movie/constants.dart';
import 'package:get/get.dart';

class Genres extends StatelessWidget {
  List<String> listGenres;
  int indexSelected;
  int meta;
  Genres({Key key, this.listGenres, this.indexSelected, this.meta})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (_) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: kDefaultPadding),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding / 2, // 5 padding top and bottom
              ),
              decoration: BoxDecoration(
                border: Border.all(
                    color: index == indexSelected
                        ? kSecondaryColor
                        : Colors.black45),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                listGenres[index],
                style: TextStyle(
                    color: index == indexSelected
                        ? kSecondaryColor
                        : Colors.black45,
                    fontSize: 12),
              ),
            ),
            onTap: () {
              _.changeSelectedGenre(index, meta);
            },
          ),
          itemCount: listGenres.length,
        ),
      );
    });
  }
}
