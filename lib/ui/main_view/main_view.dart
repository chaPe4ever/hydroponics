import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hydroponics/ui/main_view/widgets/remain_liquid_card/remain_liquid_card.dart';

class MainView extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Align(
            //   alignment: Alignment.topRight,
            //   child: TextButton(
            //     onPressed: () {
            //       Get.toNamed(PlantGrowSelectView.route);
            //     },
            //     child: Text('Plants menu'),
            //   ),
            // ),
            RemainLiquidCard(),
          ],
        ),
      ),
    );
  }
}
