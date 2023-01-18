import 'package:anyware/screens/dashboard/dashboard_screen.dart';
import 'package:anyware/screens/home/widgets/custom_side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        CustomSideMenu(pageController: page),
        Expanded(
          child: PageView(
            controller: page,
            children: const [
              DashboardScreen(),
              Center(
                child: Text('Schedule'),
              ),
              Center(
                child: Text('Courses'),
              ),
              Center(
                child: Text('Gradebook'),
              ),
              Center(
                child: Text('Performance'),
              ),
              Center(
                child: Text('Announcement'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
