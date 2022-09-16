import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final String? img;
  final String? title;
  final VoidCallback? ontap;
  const SettingsCard({
    this.img,
    this.title,
    this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      tileColor: kBrightColor,
      leading: Image.asset(
        img!,
        height: 23,
        color: kDarkLightColor,
      ),
      title: Text(
        title!,
        style: h14HeadingBlackSimple,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: kDarkLightColor,
      ),
    );
  }
}
