import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie/app/controllers/dashboard.controller.dart';
import 'package:flutter_app_movie/app/views/pages.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                SearchPage(),
                DownloadPage(),
                AccountPage()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black45,
            selectedItemColor: Colors.black,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            //type: BottomNavigationBarType.fixed,
            items: [
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.house_alt, label: "home"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.search, label: "search"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.arrow_down_to_line, label: "download"),
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
