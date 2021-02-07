import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hydroponics/assets/custom_theme_data.dart';
import 'package:hydroponics/core/main_controller.dart';
import 'package:hydroponics/globals.dart';

class MainView extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            RemainLiquidCard(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RemainLiquidCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: 200.0,
        height: 320.0,
        child: Card(
          elevation: 5.0,
          child: Stack(
            children: [
              HeaderRow(),
              CapacityLvlLines(),
              BottleContainer(),
              VolumeDescription(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SvgPicture.asset(
        kWaterBottle,
        width: Get.theme.iconTheme.fertilizerTankWidth,
        height: Get.theme.iconTheme.fertilizerTankHeight,
      ),
    );
  }
}

class VolumeDescription extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    '${controller.remainingCapacity}',
                    style: Get.theme.textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Liters',
                  style: Get.textTheme.bodyText2,
                ),
              ],
            ),
            Center(
              child: Text(
                'Remaining',
                style: Get.textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderRow extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'PH Tank',
            style: Get.theme.textTheme.bodyText1,
          ),
        ),
        Spacer(),
        IconButton(
            splashRadius: Get.theme.iconTheme.size,
            icon: Icon(
              FontAwesomeIcons.windowMaximize,
              size: Get.theme.iconTheme.size,
            ),
            onPressed: () {
              controller.setRemainingCapacity();
            })
      ],
    );
  }
}

class CapacityLvlLines extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Positioned(
        top: 50.0,
        // alignment: Alignment.centerLeft,
        child: Column(
          children: controller.capacityLvlLines
              .map(
                (active) => Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3.0),
                        ),
                        color: active ? Get.theme.accentColor : Colors.grey,
                      ),
                      width: 4.0,
                      height: 15.0,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
