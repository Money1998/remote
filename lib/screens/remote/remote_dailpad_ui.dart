import 'package:flutter/material.dart';
import 'package:remote/constants/assets_images.dart';
import 'package:remote/constants/colors.dart';

class RemoteDailPad extends StatelessWidget {
  const RemoteDailPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Colors.transparent,
                width: 4.0,
              ),
            ),
            child: Center(
              child: Container(
                width: 240.0,
                height: 240.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: outerCircle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
                child: Center(
                  child: Center(
                    child: Material(
                      elevation: 10.0,
                      shape: const CircleBorder(),
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: innerCircle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 140,
            child: Transform.rotate(
              angle: 1.5 * 3.14159265359,
              child: Image.asset(
                arrowIcon,
                alignment: Alignment.center,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 140,
            child: Transform.rotate(
              angle: 2 * 3.14159265359,
              child: Image.asset(
                arrowIcon,
                alignment: Alignment.center,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 140,
            child: Transform.rotate(
              angle: 0.5 * 3.14159265359,
              child: Image.asset(
                arrowIcon,
                alignment: Alignment.center,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 140,
            child: Transform.rotate(
              angle: 3.14159265359,
              child: Image.asset(
                arrowIcon,
                alignment: Alignment.center,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
