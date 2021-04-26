import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              splashRadius: Get.theme.iconTheme.size,
              icon: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
                size: Get.theme.iconTheme.size,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            // widthFactor: 10.0,
          ),
        ],
      ),
    );
  }
}
