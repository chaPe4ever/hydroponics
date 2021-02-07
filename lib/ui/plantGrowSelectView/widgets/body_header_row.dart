import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/plant_grow_select_controller.dart';

class BodyHeaderRow extends GetWidget<PlantGrowSelectController> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Text(
              'Filter Results Found',
              style: Get.theme.textTheme.bodyText1,
            ),
            SizedBox(width: 5.0),
            Obx(
              () => Text(
                '(${controller.filteredVegetableList.length})',
                style: Get.theme.textTheme.bodyText2,
              ),
            ),
            Spacer(),
            Obx(
              () => IconButton(
                splashRadius: Get.theme.iconTheme.size,
                icon: Icon(
                  FontAwesomeIcons.qrcode,
                  size: Get.theme.iconTheme.size,
                  color: controller.hamburgerIconActive
                      ? Get.theme.iconTheme.color
                      : Get.theme.primaryColor,
                ),
                onPressed: () {
                  controller.setHamburgerIconActiveness(false);
                },
              ),
            ),
            Obx(
              () => IconButton(
                splashRadius: Get.theme.iconTheme.size,
                icon: Icon(
                  FontAwesomeIcons.bars,
                  size: Get.theme.iconTheme.size,
                  color: controller.hamburgerIconActive
                      ? Get.theme.primaryColor
                      : Get.theme.iconTheme.color,
                ),
                onPressed: () {
                  controller.setHamburgerIconActiveness(true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
