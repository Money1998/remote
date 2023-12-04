import 'package:flutter/material.dart';
import 'package:remote/constants/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              const Icon(Icons.water_drop_outlined, color: Colors.white),
              const Text("WATER",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(width: 10),
              ToggleSwitch(
                minWidth: 27.0,
                minHeight: 27.0,
                cornerRadius: 30.0,
                activeBgColors: const [
                  [Colors.white],
                  [Colors.white]
                ],
                activeFgColor: Colors.transparent,
                inactiveBgColor: Colors.transparent,
                inactiveFgColor: Colors.transparent,
                initialLabelIndex: 1,
                borderWidth: 1.0,
                borderColor: const [innerCircle],
                totalSwitches: 2,
                labels: const ['', ''],
                radiusStyle: true,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                width: 1,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
            ),
            Row(children: [
              const Icon(Icons.blur_on, color: Colors.white),
              const Text("BRUSH",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(width: 10),
              ToggleSwitch(
                minWidth: 27.0,
                minHeight: 27.0,
                cornerRadius: 30.0,
                activeBgColors: const [
                  [Colors.white],
                  [Colors.white]
                ],
                activeFgColor: Colors.transparent,
                inactiveBgColor: Colors.transparent,
                inactiveFgColor: Colors.transparent,
                initialLabelIndex: 1,
                borderWidth: 1.0,
                borderColor: const [innerCircle],
                totalSwitches: 2,
                labels: const ['', ''],
                radiusStyle: true,
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
