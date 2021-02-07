import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderMainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Center(
        child: Text(
          'What kind of plant you would like to grow?',
          style: Get.textTheme.headline6,
        ),
      ),
    );
  }
}
