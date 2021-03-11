

import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/search.controller.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Text(
            "Search",
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
