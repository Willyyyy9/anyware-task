import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {},
        child: const CircleAvatar(
          radius: 22,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/profile.png'),
        ),
      ),
    );
  }
}
