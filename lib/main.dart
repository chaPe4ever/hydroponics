import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'assets/custom_theme_data.dart';
import 'page_router.dart';
import 'ui/main_view.dart';

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
      initialRoute: MainView.route,
      getPages: PageRouter.getPages,
      debugShowCheckedModeBanner: false,
    ),
  );
}
