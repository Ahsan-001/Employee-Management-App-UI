import 'dart:ui';

import 'package:employeeapp/CompanySide/HomeSection/AssignRoles/selectLocation.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class AssignNewRoles extends StatelessWidget {
  const AssignNewRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Select Service"),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          children: [
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/gardening.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Gardening",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/cleaning.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Cleaning",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/construction.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Construction",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/installation.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Installation",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/painting.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Painting",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/carpentry.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Carpentry ",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectLocation(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              leading: Image.asset(
                "assets/images/stocks.png",
                color: kMainColor,
                height: 30,
              ),
              title: const Text(
                "Stocks",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Select service to assign role!",
              textAlign: TextAlign.center,
              style: h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
            ),
          ],
        ),
      ),
    );
  }
}
