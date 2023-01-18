import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon_button.dart';
import 'custom_profile_button.dart';
import 'custom_text_input.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(children: [
        const SizedBox(
          width: 32,
        ),
        if (width > 1050)
          const Text(
            "Welcome Talia,",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        const Spacer(),
        if (width > 1050) CustomTextInput(controller: controller),
        const CustomIconButton(
          icon: FontAwesomeIcons.solidBell,
          notification: "1",
          needNotification: true,
        ),
        const CustomIconButton(
          icon: FontAwesomeIcons.solidEnvelope,
          notification: "3",
          needNotification: true,
        ),
        if (width < 1050)
          const CustomIconButton(
            icon: FontAwesomeIcons.magnifyingGlass,
            notification: "3",
            needNotification: false,
          ),
        const CustomProfileButton(),
      ]),
    );
  }
}
