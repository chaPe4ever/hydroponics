import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/models/vegetable.dart';
import 'package:hydroponics/core/plant_grow_select_controller.dart';

class FilteredResultList extends GetWidget<PlantGrowSelectController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 45.0),
        child: GridView.builder(
          itemCount: controller.filteredVegetableList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.82,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: Get.width < 800 ? 3 : 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            Vegetable item = controller.filteredVegetableList[index];
            return Card(
              color: Colors.white,
              elevation: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FittedBox(child: item.icon),
                  // Text(item.title),
                  item.icon,
                  SizedBox(height: 5.0),
                  Text(
                    item.title ?? '',
                    style: Get.theme.textTheme.bodyText1,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    item.harvestDuration ?? '',
                    style: Get.theme.textTheme.bodyText2,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
