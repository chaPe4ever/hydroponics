import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/main_controller.dart';

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
