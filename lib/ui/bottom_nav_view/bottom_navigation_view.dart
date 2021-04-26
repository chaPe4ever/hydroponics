import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hydroponics/core/bottom_navigation_view_controller.dart';
import 'package:hydroponics/ui/main_view/main_view.dart';
import 'package:hydroponics/ui/plantGrowSelectView/plant_grow_select_view.dart';

class BottomNavigationView extends GetView<BottomNavigationViewController> {
  static const String route = '/bottomNavigationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'MyApp',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.toNamed(PlantGrowSelectView.route);
            },
            child: Text('Plants menu'),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() => Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.lightBlue,
              backgroundColor: Colors.white,
              elevation: 15.0,
              currentIndex: controller.currentNavPageIndex,
              onTap: (index) {
                controller.currentNavPageIndex = index;
              },
              items: controller.bottomNavigationBarItems,
            ),
          )),
      body: Obx(() => IndexedStack(
            index: controller.currentNavPageIndex,
            children: [
              MainView(),
              SizedBox(),
            ],
          )),
    );
  }
}
