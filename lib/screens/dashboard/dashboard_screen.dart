import 'package:anyware/screens/dashboard/widgets/announcement_widget.dart';
import 'package:anyware/screens/dashboard/widgets/due_widget.dart';
import 'package:anyware/screens/dashboard/widgets/header_widget.dart';
import 'package:anyware/screens/dashboard/widgets/tips_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(controller: searchController),
          const TipsWidget(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AnnouncementWidget(),
              width > 1380 ? const DueWidget() : Container()
            ],
          ),
          if (width < 1380) const DueWidget()
        ],
      ),
    );
  }
}
