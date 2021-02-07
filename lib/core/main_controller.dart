import 'package:get/get.dart';

class MainController extends GetxController {
  final _capacityLvlLines = <bool>[].obs;

  final _remainingCapacity = 250.obs;

  int _totalCapacity = 250;

  @override
  void onInit() {
    super.onInit();

    calculateRemainingCapacity();
  }

  List<bool> get capacityLvlLines => _capacityLvlLines;

  int get remainingCapacity => _remainingCapacity.value;

  void setRemainingCapacity() {
    if (_remainingCapacity.value - 20 < 0) {
      _remainingCapacity.value = 0;
    } else {
      _remainingCapacity.value -= 20;
    }
    calculateRemainingCapacity();
  }

  void calculateRemainingCapacity() {
    List<bool> capacityLvlsToReturn = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ];

    for (int i = 0; i < capacityLvlsToReturn.length; i++) {
      if (remainingCapacity > 0) {
        double factor =
            ((i + 1) / capacityLvlsToReturn.length) * _totalCapacity;
        if (i == 0) {
          // Show one bar even if capacity is 1
          capacityLvlsToReturn[i] = true;
          continue;
        }
        capacityLvlsToReturn[i] = factor <= remainingCapacity.toDouble();
      } else {
        capacityLvlsToReturn[i] = false;
      }
    }
    ;
    var listToAdd = capacityLvlsToReturn.reversed.toList();
    _capacityLvlLines.clear();
    _capacityLvlLines.addAll(listToAdd);
  }
}
