import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:remote/constants/common_textstyles.dart';
import 'package:remote/screens/profile/profile_screen.dart';

import '../commons/utils.dart';
import 'remote/remote_control_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _selectedIndex == 1
            ? screenDemo()
            : _selectedIndex == 2
                ? screenDemo()
                : _selectedIndex == 3
                    ? screenDemo()
                    : _selectedIndex == 4
                        ? const RemoteScreen()
                        : const ProfileScreen(),
        bottomNavigationBar: MoltenBottomNavigationBar(
          selectedIndex: _selectedIndex,
          domeHeight: 25,
          curve: Curves.bounceIn,
          borderColor: Colors.white,
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            MoltenTab(
              icon: Container(
                height: 30,
                width: 30,
                decoration: bottomBoxDecoration,
                child: const Center(
                  child: Icon(
                    Icons.person_rounded,
                    color: Colors.blue, // Set the icon color
                  ),
                ),
              ),
              title: const Text(
                'Profile',
                style: t14BlueB,
              ),
              unselectedColor: Colors.blue,
              selectedColor: Colors.blue,
            ),
            MoltenTab(
              icon: Container(
                height: 30,
                width: 30,
                decoration: bottomBoxDecoration,
                child: const Center(
                  child: Icon(
                    Icons.message_outlined,
                    color: Colors.blue, // Set the icon color
                  ),
                ),
              ),
              title: const Text(
                'Messages',
                style: t14BlueB,
              ),
              unselectedColor: Colors.blue,
              selectedColor: Colors.blue,
            ),
            MoltenTab(
              icon: Container(
                height: 30,
                width: 30,
                decoration: bottomBoxDecoration,
                child: const Center(
                  child: Icon(
                    Icons.rocket,
                    color: Colors.blue, // Set the icon color
                  ),
                ),
              ),
              unselectedColor: Colors.blue,
              selectedColor: Colors.blue,
            ),
            MoltenTab(
              icon: Container(
                height: 30,
                width: 30,
                decoration: bottomBoxDecoration,
                child: const Center(
                  child: Icon(
                    Icons.settings,
                    color: Colors.blue, // Set the icon color
                  ),
                ),
              ),
              title: const Text('Settings', style: t14BlueB),
              unselectedColor: Colors.blue,
              selectedColor: Colors.blue,
            ),
            MoltenTab(
              icon: Container(
                height: 30,
                width: 30,
                decoration: bottomBoxDecoration,
                child: const Center(
                  child: Icon(
                    Icons.settings_remote,
                    color: Colors.blue, // Set the icon color
                  ),
                ),
              ),
              title: const Text('Remote', style: t14BlueB),
              unselectedColor: Colors.blue,
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget screenDemo() => Center(
        child: Text(
          'Selected Tab: $_selectedIndex',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      );
}
