import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/dashboard.controller.dart';
import 'package:flutter_app_movie/app/views/pages.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [HomePage(), SearchPage(), AccountPage()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black45,
            selectedItemColor: kSecondaryColor,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            //type: BottomNavigationBarType.fixed,
            items: [
              _bottomNavigationBarItem(icon: CupertinoIcons.tv, label: "home"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.search, label: "search"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.person, label: "account"),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
