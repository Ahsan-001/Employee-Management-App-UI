// import 'dart:html';

import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "EMPLOYEE NAME",
                      style: h13HeadingBlackBold,
                    ),
                    Icon(Icons.arrow_downward, size: 18),
                  ],
                ),
                const Text(
                  "STATUS",
                  style: h13HeadingBlackBold,
                ),
              ],
            ),
            // ListTile(
            //   leading: Image.asset("assets/images/admin.png"),
            //   title: const Text(
            //     "Zain ul abideen (Admin)",
            //     style: h18HeadingBlackBold,
            //   ),
            //   subtitle: Text(
            //     "NOT PUNCHED",
            //     style: h13HeadingBlackBold.copyWith(color: orangeColor),
            //   ),
            // ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Umer",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "SHARE LOGIN DETAILS",
                style: h13HeadingBlackBold.copyWith(color: greenColor),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "NOT PUNCHED",
                style: h13HeadingBlackBold.copyWith(color: orangeColor),
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
