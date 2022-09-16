import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:flutter/material.dart';

class DashboardCards extends StatelessWidget {
  final String? text;
  final IconData? icon;

  final VoidCallback? ontap;
  const DashboardCards({
    Key? key,
    this.text,
    this.ontap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: blueColor.shade700,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white60,
                  size: 40,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  text!,
                  textAlign: TextAlign.center,
                  style: h16HeadingWhiteBold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
