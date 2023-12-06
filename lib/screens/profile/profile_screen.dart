import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:remote/commons/utils.dart';
import 'package:remote/constants/assets_images.dart';
import 'package:remote/constants/common_textstyles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> pointsList = [];
  List<Map<String, dynamic>> badgesList = [];

  @override
  void initState() {
    recordSet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            decoration: boxDecoration,
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: const Column(children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ),
            ]),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: boxDecoration,
                height: 75,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                width: 150.0,
                height: 150.0,
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
                  backgroundImage: AssetImage(
                      profileImage), // profileImageReplace with your asset image path
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(children: [
              const SizedBox(height: 30),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    // Replace with your desired gradient colors
                    stops: [0.0, 1.0],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: const Text(
                  'Victoria Robertson',
                  style: t24WB,
                ),
              ),
              const Text(
                'Cleaning Hours: 18',
                style: t16b,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2, // Number of tabs
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      bottom: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Points',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Badges',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.black,
                        indicatorColor:
                            Colors.grey, // Set the background color here
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        // Content for the "Points" tab
                        ListView.builder(
                          itemCount: pointsList.length, // Number of points
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title:
                                  Text(pointsList[index]['title'], style: t18b),
                              subtitle: Text(pointsList[index]['description'],
                                  style: t16b),
                              leading: Icon(pointsList[index]['icon']),
                              trailing:
                                  Text(pointsList[index]['time'], style: t12n),
                            );
                          },
                        ),
                        // Content for the "Badges" tab
                        ListView.builder(
                          itemCount: badgesList.length, // Number of badges
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title:
                                  Text(badgesList[index]['title'], style: t18b),
                              subtitle: Text(badgesList[index]['description'],
                                  style: t16b),
                              leading: Icon(badgesList[index]['icon']),
                              trailing:
                                  Text(badgesList[index]['time'], style: t12n),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }

  void recordSet() {
    pointsList = List.generate(10, (index) {
      return {
        'title': 'Achievement ${index + 1}',
        'description': 'Completed Task in details view set data${index + 1}',
        'icon': Icons.check_circle,
        'time': '${(index + 8) % 12 + 1}:00 AM',
      };
    });

    badgesList = List.generate(10, (index) {
      return {
        'title': 'Badge ${index + 1}',
        'description':
            'Badge ${index + 1} Description in details view set data',
        'icon': Icons.star,
        'time': '${(index + 1) % 12 + 1}:00 PM',
      };
    });
  }
}
