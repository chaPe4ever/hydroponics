import 'package:flutter/material.dart';

class Vegetable {
  Widget icon;
  String title;
  String harvestDuration;

  Vegetable({
    @required this.harvestDuration,
    @required this.icon,
    @required this.title,
  });
}
