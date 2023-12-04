import 'package:flutter/material.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/screens/remote/remote_speed_control_ui.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  bool isBottomSheetClickValue = true;
  double sheetHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 0),
      height: sheetHeight,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(27.0)),
      ),
      child: Column(children: [
        InkWell(
          child: Column(children: [
            const SizedBox(height: 5),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Icon(Icons.settings, color: Colors.white),
            const SizedBox(height: 10),
            const Text(
              "SETTINGS",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          onTap: () {
            setState(() {
              isBottomSheetClickValue = !isBottomSheetClickValue;
              if (isBottomSheetClickValue) {
                sheetHeight = 200.0;
              } else {
                sheetHeight = 100.0;
              }
            });
          },
        ),
        Visibility(
          visible: sheetHeight == 200.0,
          child: const SpeedControl(),
        )
      ]),
    );
  }
}
