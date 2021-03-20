import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/controller.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class Category extends StatelessWidget {
  final List<String> listCategory;
  final int selectedIndex;
  Category({Key key, this.listCategory, this.selectedIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (controller) {
      return Container(
        height: 39,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategory.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listCategory[index],
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: index == selectedIndex
                            ? kTextColor
                            : Colors.black.withOpacity(0.4)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == selectedIndex
                          ? kSecondaryColor
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
              onTap: () {
                controller.changeSelectedCategory(index);
              },
            ),
          ),
        ),
      );
    });
  }
}
