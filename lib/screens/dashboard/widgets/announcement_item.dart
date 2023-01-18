import 'package:flutter/material.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem(
      {super.key,
      required this.image,
      required this.name,
      required this.subject,
      required this.message});
  final String image;
  final String name;
  final String subject;
  final String message;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subject,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const VerticalDivider(
              width: 1,
            ),
            const SizedBox(
              width: 16,
            ),
            SizedBox(
              width: (width * 0.45) - 100,
              child: Text(
                message,
                style: const TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
