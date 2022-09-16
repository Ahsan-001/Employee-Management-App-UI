import 'package:employeeapp/EmployeeSide/Services/active.dart';
import 'package:employeeapp/EmployeeSide/Services/cancelled.dart';
import 'package:employeeapp/EmployeeSide/Services/completed.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class ManageServices extends StatelessWidget {
  const ManageServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const ActiveView(),
      const Completedview(),
      const CancelledView(),
    ];
    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          color: blueColor,
        ),
        child: Text(
          "Active",
          style: TextStyle(color: kBrightColor),
        ),
      ),
      const Tab(
        icon: Icon(
          Icons.check_circle_outline,
          color: greenColor,
        ),
        child: Text(
          "Completed",
          style: TextStyle(color: kBrightColor),
        ),
      ),
      const Tab(
        icon: Icon(
          Icons.cancel_outlined,
          color: redColor,
        ),
        child: Text(
          "Cancelled",
          style: TextStyle(color: kBrightColor),
        ),
      ),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          // ignore: deprecated_member_use
          // brightness: Brightness.dark,
          backgroundColor: kMainColor,
          elevation: 0.0,
          toolbarHeight: 70,
          title: const Text(
            "Manage Services",
            style: TextStyle(color: kBrightColor),
          ),
          // centerTitle: true,
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //           bottomLeft: Radius.circular(20),
          //           bottomRight: Radius.circular(20)),
          //       gradient: LinearGradient(
          //           colors: [Colors.white, Colors.white],
          //           begin: Alignment.bottomCenter,
          //           end: Alignment.topCenter)),
          // ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: kBrightColor,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
