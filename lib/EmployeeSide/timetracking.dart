import 'package:employeeapp/EmployeeSide/attendenceEmployee.dart';
import 'package:employeeapp/EmployeeSide/profile.dart';
import 'package:employeeapp/EmployeeSide/salaryEmployee.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../Utils/AppTextStyleAndColors/appTextStyle.dart';

class TimeTracking extends StatefulWidget {
  static const menuItems = <String>[
    'Profile',
    'QR Card',
    'Setting',
  ];

  @override
  State<TimeTracking> createState() => _TimeTrackingState();
}

class _TimeTrackingState extends State<TimeTracking>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.initState();
  }

  final List<PopupMenuItem<String>> _popUpMenuItems = TimeTracking.menuItems
      .map(
        (String value) => PopupMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = 'One';

  String? _btn2SelectedVal;

  late String _btn3SelectedVal;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kMainColor,
        title: const Text(
          "Attendance and Salary",
          style: h17HeadingWhiteBold,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                EmployeeProfile(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.downToUp,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/user_2.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image.asset(
                        'assets/images/user_3.png',
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Michael',
                        style: h16HeadingBlackBold,
                      ),
                    ]),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                // height: 50,
                width: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TabBar(
                        labelColor: kMainColor,
                        labelStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        unselectedLabelColor: greyColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: kMainColor,
                        controller: tabController,
                        isScrollable: true,
                        tabs: const [
                          Tab(
                            text: 'Attendance',
                          ),
                          Tab(
                            text: 'Salary',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // color: redColor.shade900,
              height: 670,
              // width: 500,
              child: TabBarView(
                controller: tabController,
                children: const [
                  EmployeeAttendence(),
                  PieChart3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Future<void> _openProfile(BuildContext context) async {
//   print('settings');
//   await Navigator.push(
//       context, MaterialPageRoute(builder: (context) => EmployeeProfile()));
//   print('settings completed');
// }

// Future<void> _openQrCard(BuildContext context) async {
//   print('settings');
//   await Navigator.push(
//       context, MaterialPageRoute(builder: (context) => QRCard()));
//   print('settings completed');
// }

// Future<void> _openSettings(BuildContext context) async {
//   print('settings');
//   await Navigator.push(
//       context, MaterialPageRoute(builder: (context) => EmployeeSetting()));
//   print('settings completed');
// }


///

