import 'package:flutter/material.dart';

class SpeedControl extends StatefulWidget {
  const SpeedControl({super.key});

  @override
  State<SpeedControl> createState() => _SpeedControlState();
}

class _SpeedControlState extends State<SpeedControl> {
  String state1 = "";
  var progress1 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Speed: ${progress1.round().toString()}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              )),
        ),
        Slider(
          value: progress1,
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white.withOpacity(0.6);
              }
              return Colors.white.withOpacity(0.6);
            },
          ),
          activeColor: const Color(0xff1060cb),
          autofocus: true,
          min: 0.0,
          max: 100.0,
          thumbColor: Colors.white,
          onChanged: (double value) {
            setState(() {
              progress1 = value;
            });
          },
        )
      ]),
    );
  }
}
