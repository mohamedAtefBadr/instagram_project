import 'package:flutter/material.dart';
import 'package:instagram_project/widgets/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
    );
  }
}
