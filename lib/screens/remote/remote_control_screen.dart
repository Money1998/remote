import 'package:flutter/material.dart';
import 'package:remote/commons/utils.dart';
import 'package:remote/commons/widgets/custom_button.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';
import 'package:remote/screens/remote/bottom_ui.dart';
import 'package:remote/screens/remote/remote_dailpad_ui.dart';
import 'package:remote/screens/remote/toggle_ui.dart';

class RemoteScreen extends StatefulWidget {
  const RemoteScreen({super.key});

  @override
  State<RemoteScreen> createState() => _RemoteScreenState();
}

class _RemoteScreenState extends State<RemoteScreen> {
  bool isStartMode = true;
  int i = 0;
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
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Remote Control",
                  style: t20WB,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ToggleWidget(),
            const SizedBox(height: 40),
            const RemoteDailPad(),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: CustomButton(
                color: dynamicColor,
                title: isStartMode ? "START" : "STOP",
                onTap: _toggleButton,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
        bottomSheet: const BottomScreen(),
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
