import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hydroponics/ui/bottom_nav_view/bottom_navigation_view.dart';

import 'assets/custom_theme_data.dart';
import 'page_router.dart';
import 'ui/main_view/main_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    GetMaterialApp(
      initialBinding: PageRouter.initialBinding,
      title: 'Hydroponics',
      theme: customThemeData,
      initialRoute: BottomNavigationView.route,
      getPages: PageRouter.getPages,
      debugShowCheckedModeBanner: false,
    ),
  );
}
