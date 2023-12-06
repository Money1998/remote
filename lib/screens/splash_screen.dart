import 'package:flutter/material.dart';
import 'package:remote/commons/shared_pref.dart';
import 'package:remote/constants/strings.dart';
import 'package:remote/screens/bottom_nav_screen.dart';
import 'package:remote/screens/profile/profile_screen.dart';
import 'package:remote/screens/remote/remote_control_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

PreferenceUtils preferenceUtils = PreferenceUtils();

class _SplashScreenState extends State<SplashScreen> {
  bool registerKey = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 2), () async {
        var isRegister = await preferenceUtils.hasKey(isLogin);
        if (isRegister) {
          isRegister = await preferenceUtils.readBool(isLogin);
        }
        if (isRegister) {
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const BottomBarScreen(),
          //     ));
        } else {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) => const BottomNavScreen(),
          ), (route) => false);
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
