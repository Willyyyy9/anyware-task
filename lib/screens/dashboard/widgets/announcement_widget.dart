import 'package:flutter/material.dart';

import '../../../config/color_palette.dart';
import 'announcement_item.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 5), blurRadius: 5)
          ]),
      child: Stack(children: [
        Positioned(
            right: 0,
            top: 10,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "All",
                  style: TextStyle(
                      color: ColorPalette.primaryColor,
                      fontWeight: FontWeight.bold),
                ))),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            child: Text(
              "Announcements",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "We educate mentors, Keep updated",
            style: TextStyle(color: ColorPalette.primaryColor.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 32,
          ),
          const AnnouncementItem(
              image: "images/profile.png",
              name: "Mr. Ahmed Mostafa",
              subject: "Math 101",
              message:
                  "Hi my heroes! I just want you ready to our exams and focus on remaining assesments to gain more grades. Good luck my warriors"),
          const AnnouncementItem(
              image: "images/female.jpg",
              name: "Mrs. Salma Ahmed",
              subject: "Physics 02",
              message:
                  "Hello my students. I want to announce that the next quiz will be within 3 days and will cover the whole unit 2. Add and subtract numbers. Study hard Good luck"),
          const AnnouncementItem(
              image: "images/school.jpg",
              name: "School Management",
              subject: "Management",
              message:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          const AnnouncementItem(
              image: "images/events.jpg",
              name: "Events Manager",
              subject: "Events",
              message:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
        ]),
      ]),
    );
  }
}
