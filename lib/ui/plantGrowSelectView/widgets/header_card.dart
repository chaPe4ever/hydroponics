import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.accentColor,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Get.theme.primaryColor,
              Colors.transparent,
              Colors.transparent,
            ],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstOut,
        child: Container(
          color: Get.theme.primaryColor,
          // Color(0xff1bb38c),
          child: Stack(
            children: [
              Positioned.fill(
                left: -Get.width * 1.15,
                top: -Get.width * 0.5,
                bottom: Get.width * 0.3,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                ),
              ),
              Positioned.fill(
                left: -Get.width * 0.4,
                top: -Get.width * 0.4,
                bottom: Get.width * 0.51,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                ),
              ),
              Positioned.fill(
                right: -Get.width * 0.75,
                top: Get.width * 0.55,
                bottom: -Get.width * 0.51,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                ),
              ),
              Positioned.fill(
                right: -Get.width * 0.9,
                top: Get.width * 0.48,
                bottom: -Get.width * 0.2,
                left: Get.width * 0.2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
