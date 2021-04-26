import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/main_controller.dart';

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
