import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/color_palette.dart';

class DueWidget extends StatelessWidget {
  const DueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 1380)
          ? width * 0.25 - 100
          : null,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 5), blurRadius: 5)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "What's due",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const Text(
          "Sometimes \"LATER\" becomes \"NEVER\". Go Now",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.hourglassHalf,
              color: ColorPalette.primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            const AutoSizeText(
              "Unit 2 Quiz",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Course: Physics 02",
          style: TextStyle(color: Colors.grey),
        ),
        const AutoSizeText(
          "Topic: Unit2: Motion and forces",
          style: TextStyle(color: Colors.grey),
        ),
        const AutoSizeText(
          "Due to: 20 Dec 2017 - 9:00 PM",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 40,
          child: SizedBox.expand(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                alignment: Alignment.center,
                side: BorderSide(width: 2, color: ColorPalette.lightColor),
              ),
              child: const Text(
                'Download',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.clipboardCheck,
              color: ColorPalette.primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            const AutoSizeText(
              "12 - 12 Assignment",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Course: Arabic K12",
          style: TextStyle(color: Colors.grey),
        ),
        const AutoSizeText(
          "Topic: الوحدة الثانية-الافعال",
          style: TextStyle(color: Colors.grey),
        ),
        const AutoSizeText(
          "Due to: 20 Dec 2017 - 9:00 PM",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 40,
          child: SizedBox.expand(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                alignment: Alignment.center,
                side: BorderSide(width: 2, color: ColorPalette.lightColor),
              ),
              child: const AutoSizeText(
                'Solve Assignment',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
