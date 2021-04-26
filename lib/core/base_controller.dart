import 'package:get/get.dart';

mixin BaseController {
  RxBool _rxIsBusy = false.obs;

  bool get isBusy => _rxIsBusy.value;

  set isBusy(bool value) {
    _rxIsBusy.value = value;
  }
}
