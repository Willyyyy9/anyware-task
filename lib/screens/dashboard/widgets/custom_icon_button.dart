import 'package:flutter/material.dart';

import '../../../config/color_palette.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.notification,
      required this.needNotification});
  final IconData icon;
  final String notification;
  final bool needNotification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: ColorPalette.primaryColor,
                size: 30,
              )),
          if (needNotification)
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorPalette.lightColor),
                  child: Center(
                    child: Text(
                      notification,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
