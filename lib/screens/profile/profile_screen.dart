import 'package:flutter/material.dart';
import 'package:remote/commons/utils.dart';
import 'package:remote/commons/widgets/custom_button.dart';
import 'package:remote/constants/assets_images.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';
import 'package:remote/screens/remote/remote_dailpad_ui.dart';
import 'package:remote/screens/remote/toggle_ui.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isStartMode = true;
  Color dynamicColor = btnColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: boxDecoration,
          child: Column(children: [
            const SizedBox(height: 10),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Home",
                  style: t16WB,
                ),
                Text(
                  "Profile",
                  style: t24WB,
                ),
                Text(
                  "Logout",
                  style: t16WB,
                ),
              ],
            ),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 48.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(profileImage), // Replace with your asset image path
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _toggleButton() {
    setState(() {
      isStartMode = !isStartMode;
      dynamicColor = isStartMode ? btnColor : redColor;
    });
  }
}
