import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/color_palette.dart';

class CustomSideMenu extends StatefulWidget {
  const CustomSideMenu({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<CustomSideMenu> createState() => _CustomSideMenuState();
}

class _CustomSideMenuState extends State<CustomSideMenu> {
  

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      controller: widget.pageController,
      collapseWidth: 950,
      style: SideMenuStyle(
          showTooltip: false,
          openSideMenuWidth: 250,
          compactSideMenuWidth: 70,
          displayMode: SideMenuDisplayMode.auto,
          hoverColor: Colors.white.withOpacity(0.2),
          unselectedIconColor: Colors.white,
          unselectedTitleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          selectedColor: Colors.white,
          selectedTitleTextStyle: TextStyle(
              color: ColorPalette.primaryColor, fontWeight: FontWeight.bold),
          selectedIconColor: ColorPalette.primaryColor,
          itemInnerSpacing: 16,
          itemHeight: 75,
          backgroundColor: ColorPalette.primaryColor),
      title: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          SizedBox(
            height: 16,
          ),
          Center(
            child: AutoSizeText(
              "Coligo",
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 48),
            ),
          ),
          SizedBox(
            height: 64,
          )
        ],
      ),
      items: [
        SideMenuItem(
          priority: 0,
          title: 'Dashboard',
          onTap: () {
            widget.pageController.jumpToPage(0);
          },
          icon: const Icon(FontAwesomeIcons.house),
        ),
        SideMenuItem(
          priority: 1,
          title: 'Schedule',
          onTap: () {
            widget.pageController.jumpToPage(1);
          },
          icon: const Icon(Icons.calendar_month),
        ),
        SideMenuItem(
          priority: 2,
          title: 'Courses',
          onTap: () {
            widget.pageController.jumpToPage(2);
          },
          icon: const Icon(FontAwesomeIcons.book),
        ),
        SideMenuItem(
          priority: 3,
          title: 'Gradebook',
          onTap: () {
            widget.pageController.jumpToPage(3);
          },
          icon: const Icon(FontAwesomeIcons.graduationCap),
        ),
        SideMenuItem(
          priority: 4,
          title: 'Performance',
          onTap: () {
            widget.pageController.jumpToPage(4);
          },
          icon: const Icon(FontAwesomeIcons.chartLine),
        ),
        SideMenuItem(
          priority: 5,
          title: 'Announcement',
          onTap: () {
            widget.pageController.jumpToPage(5);
          },
          icon: const Icon(FontAwesomeIcons.bullhorn),
        ),
      ],
    );
  }
}
