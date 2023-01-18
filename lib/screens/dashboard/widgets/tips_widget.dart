import 'package:anyware/screens/dashboard/widgets/gradient_text.dart';
import 'package:flutter/material.dart';

import '../../../config/color_palette.dart';

class TipsWidget extends StatelessWidget {
  const TipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 5), blurRadius: 5)
          ]),
      child: Stack(children: [
        if (width > 1050)
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "images/worktwo.png",
              height: 250,
            ),
          ),
        SizedBox(
          width: width > 1050
              ? MediaQuery.of(context).size.width * 0.5 - 100
              : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  "EXAMS TIME",
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                  gradient: LinearGradient(colors: [
                    ColorPalette.primaryColor,
                    ColorPalette.lightColor,
                  ]),
                ),
                const Text(
                  "Here we are, Are you ready to fight? Dont worry, we prepared some tips to be ready for your exams",
                  style: TextStyle(fontSize: 18, height: 1.2),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "\"Nothing happens until something moves\"-Albert Einstein",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: ColorPalette.primaryColor.withOpacity(0.5)),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorPalette.lightColor),
                    child: const Text(
                      'View exams tips',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
