import 'dart:ui';

import 'package:employeeapp/CompanySide/Plans/plans.dart';
import 'package:employeeapp/CompanySide/Reports/downloadReports.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportsView extends StatelessWidget {
  const ReportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Reports"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.headphones,
              color: kBrightColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlansView())),
              tileColor: kBrightColor,
              leading: const Icon(Icons.location_on),
              title: const Text("All In One Time Tracking Report"),
              trailing: const Icon(
                Icons.assistant,
                color: kMainColor,
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlansView())),
              tileColor: kBrightColor,
              leading: const Icon(Icons.camera),
              title: const Text("Daily Selfie Punch Report"),
              trailing: const Icon(
                Icons.assistant,
                color: kMainColor,
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlansView())),
              tileColor: kBrightColor,
              leading: const Icon(Icons.calendar_today),
              title: const Text("Daily Time Tracking Report"),
              trailing: const Icon(
                Icons.assistant,
                color: kMainColor,
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlansView())),
              tileColor: kBrightColor,
              leading: const Icon(Icons.calendar_month),
              title: const Text("Monthly Time Tracking Report"),
              trailing: const Icon(
                Icons.assistant,
                color: kMainColor,
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlansView())),
              tileColor: kBrightColor,
              leading: const Icon(Icons.money),
              title: const Text("Monthly Payroll Report"),
              trailing: const Icon(
                Icons.assistant,
                color: kMainColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                  title: "Report Requested",
                  middleText:
                      "Your requested to download the report is processed. You can download reports by tapping the below button.",
                  backgroundColor: kBrightColor,
                  titleStyle: const TextStyle(color: kDarkColor),
                  middleTextStyle: const TextStyle(color: kBlackColor),
                  radius: 10,
                  confirm: MaterialButton(
                    onPressed: () {
                      Get.to(DownloadedReports(),
                          transition: Transition.downToUp,
                          duration: Duration(milliseconds: 400));
                    },
                    child: const Text(
                      "GO TO DOWNLOADS >",
                      textAlign: TextAlign.right,
                      style: h16HeadingBlackBold,
                    ),
                  ),
                );
              },
              tileColor: kBrightColor,
              leading: Icon(Icons.person),
              title: Text("Employee Master Report"),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: blueColor.shade50,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 2),
                      blurRadius: 2,
                      color: Colors.black12)
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.cloud_download,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Click here to download sample reports",
                    style: h15HeadingBlackBold,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
