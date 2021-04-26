import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/main_controller.dart';

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
