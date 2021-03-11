import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/home.controller.dart';
import 'package:flutter_app_movie/app/models/movie.dart';
import 'package:flutter_app_movie/app/routes/app.routes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_app_movie/constants.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          padding: EdgeInsets.only(left: kDefaultPadding),
          //onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          CategoryList(),
          Genres(),
          Flexible(child: MovieCarousel())
        ],
      ),
    );
  }
}

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(
            movie: movies[index],
          ),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(movie.poster), fit: BoxFit.fill)),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.w300,fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 10,
              ),
              SizedBox(
                width: kDefaultPadding / 4,
              ),
              Text(
                "${movie.rating}",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.categories[index],
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: index == controller.selectedCategory
                                ? kTextColor
                                : Colors.black.withOpacity(0.4)),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                        height: 6,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == controller.selectedCategory
                              ? kSecondaryColor
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      controller.changeSelectedCategory(index);
                    });
                  },
                ),
              ),
            ),
          );
        });
  }
}

class Genres extends StatefulWidget {
  @override
  _GenresState createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.genres.length,
              itemBuilder: (context, index) => GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: kDefaultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 4, // 5 padding top and bottom
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: index == controller.selectedGenre
                            ? kSecondaryColor
                            : Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    controller.genres[index],
                    style: TextStyle(
                        color: index == controller.selectedGenre
                            ? kSecondaryColor
                            : Colors.black45,
                        fontSize: 12),
                  ),
                ),
                onTap: () {
                  setState(() {
                    controller.changeSelectedGenre(index);
                  });
                },
              ),
            ),
          );
        });
  }
}
