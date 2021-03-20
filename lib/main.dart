import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_movie/app/routes/app.pages.dart';
import 'package:flutter_app_movie/app/routes/app.routes.dart';
import 'package:flutter_app_movie/app/themes/app.themes.dart';
import 'package:get/get.dart';

import 'app/routes/app.routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.light,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}

