import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hydroponics/assets/custom_theme_data.dart';

import '../../../../../globals.dart';

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
