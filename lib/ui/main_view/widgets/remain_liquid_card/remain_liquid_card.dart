import 'package:flutter/material.dart';
import 'package:hydroponics/ui/main_view/widgets/remain_liquid_card/widgets/bottle_container.dart';
import 'package:hydroponics/ui/main_view/widgets/remain_liquid_card/widgets/capacity_lvl_lines.dart';
import 'package:hydroponics/ui/main_view/widgets/remain_liquid_card/widgets/header_row.dart';
import 'package:hydroponics/ui/main_view/widgets/remain_liquid_card/widgets/volume_description.dart';

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
