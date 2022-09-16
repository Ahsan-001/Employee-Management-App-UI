import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class SalaryView extends StatelessWidget {
  const SalaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/images/employee.png"),
            title: const Text(
              "umer",
              style: h18HeadingBlackBold,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SALARY",
                  style: h13HeadingBlackSimple.copyWith(color: greenColor),
                ),
                Text(
                  "ES 9677.43",
                  style: h18HeadingBlackBold.copyWith(
                    color: greenColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ES 100000.0 / Monthly',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: kDarkLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
