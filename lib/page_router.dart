import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:hydroponics/core/main_controller.dart';
import 'package:hydroponics/core/plant_grow_select_controller.dart';
import 'package:hydroponics/ui/main_view.dart';
import 'package:hydroponics/ui/plantGrowSelectView/plant_grow_select_view.dart';

class PageRouter {
  static final Bindings initialBinding = BindingsBuilder(() {});

  static final getPages = [
    GetPage(
      name: MainView.route,
      page: () => MainView(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut(() => MainController());
        },
      ),
    ),
    GetPage(
      name: PlantGrowSelectView.route,
      page: () => PlantGrowSelectView(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut(() => PlantGrowSelectController());
        },
      ),
    ),
  ];
}
