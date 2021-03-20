
import 'package:flutter_app_movie/app/bindings/playVideo.binding.dart';
import 'package:flutter_app_movie/app/views/pages.dart';
import 'package:flutter_app_movie/app/bindings/bindings.dart';
import 'package:flutter_app_movie/app/routes/app.routes.dart';
import 'package:flutter_app_movie/app/views/widget/playVideo.widget.dart';
import 'package:get/get.dart';

class AppPages{
  static final list=[
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: ()=>DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: ()=>HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: AppRoutes.ACCOUNT,
        page: ()=>AccountPage(),
        binding: AccountBinding()
    ),
    GetPage(
        name: AppRoutes.SEARCH,
        page: ()=>SearchPage(),
        binding: SearchBinding()
    ),
    GetPage(
        name: AppRoutes.PLAYVIDEO,
        page: ()=>PlayVideo(),
        binding: PlayVideoBinding()
    )
  ];

}