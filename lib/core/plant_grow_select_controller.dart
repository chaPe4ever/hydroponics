import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hydroponics/assets/custom_theme_data.dart';
import 'package:hydroponics/globals.dart';

import 'models/vegetable.dart';

class PlantGrowSelectController extends GetxController {
  final _hamburgerIconActive = false.obs;
  final _filteredVegetableList = <Vegetable>[].obs;
  @override
  void onInit() {
    _filteredVegetableList.addAll([
      Vegetable(
        title: 'Tomato',
        harvestDuration: '18 days',
        icon: SvgPicture.asset(
          kTomatoSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Cabbage',
        harvestDuration: '10 days',
        icon: SvgPicture.asset(
          kCabbageSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Carrot',
        harvestDuration: '5 days',
        icon: SvgPicture.asset(
          kCarrotSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Broccoli',
        harvestDuration: '23 days',
        icon: SvgPicture.asset(
          kBroccoliSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Cucumber',
        harvestDuration: '40 days',
        icon: SvgPicture.asset(
          kCucumberSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Eggplant',
        harvestDuration: '35 days',
        icon: SvgPicture.asset(
          kEggplantSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
      Vegetable(
        title: 'Bell Pepper',
        harvestDuration: '37 days',
        icon: SvgPicture.asset(
          kBellPepperSvg,
          width: Get.theme.iconTheme.vegetableHeight,
          height: Get.theme.iconTheme.vegetableWidth,
        ),
      ),
    ]);
    super.onInit();
  }

  bool get hamburgerIconActive => _hamburgerIconActive.value;
  List<Vegetable> get filteredVegetableList => _filteredVegetableList;

  void setHamburgerIconActiveness(bool val) {
    _hamburgerIconActive.value = val;
  }
}
