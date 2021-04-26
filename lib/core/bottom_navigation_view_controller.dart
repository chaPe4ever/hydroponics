import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../globals.dart';
import 'base_controller.dart';

class BottomNavigationViewController extends GetxController
    with BaseController {
  // Fields
  RxInt _currentNavPageIndex = 0.obs;

  List<BottomNavigationBarItem> _bottomNavigationBarItems;

  int get currentNavPageIndex => _currentNavPageIndex.value;
  List<BottomNavigationBarItem> get bottomNavigationBarItems =>
      _bottomNavigationBarItems;

  // Setters
  set currentNavPageIndex(int value) {
    _currentNavPageIndex.value = value;
  }

  // Initialisation - LifeCycle
  @override
  void onInit() async {
    super.onInit();

    _bottomNavigationBarItems = populateNavBar(withHeight: 36.0);
  }

  // Methods

  List<BottomNavigationBarItem> populateNavBar({double withHeight}) {
    return [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          kServicesIconAssetPath,
          width: withHeight,
          height: withHeight,
        ),
        // title: Text('hi'),
        label: 'Overview',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          kSettingsIconAssetPath,
          width: withHeight,
          height: withHeight,
        ),
        label: 'Settings',
        backgroundColor: Colors.white,
      ),
    ];
  }
}
