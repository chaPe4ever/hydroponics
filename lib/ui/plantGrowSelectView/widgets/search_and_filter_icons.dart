import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SearchAndFilterIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            splashRadius: Get.theme.iconTheme.size,
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: Get.theme.iconTheme.size,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: Get.theme.iconTheme.size,
            icon: Icon(
              FontAwesomeIcons.filter,
              color: Colors.white,
              size: Get.theme.iconTheme.size,
            ),
          ),
        ],
      ),
    );
  }
}
