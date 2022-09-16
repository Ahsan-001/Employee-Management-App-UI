import 'dart:ui';

import 'package:employeeapp/CompanySide/HomeSection/AssignRoles/selectLocation.dart';
import 'package:employeeapp/CompanySide/Services/servicesEmployees.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Services"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "Add Service",
                  content: Column(
                    children: const [
                      TextFieldWidget(
                        obsecure: false,
                        leadingIcon: Icons.cleaning_services_outlined,
                        lable: 'Enter Service name',
                      ),
                    ],
                  ),
                  actions: [
                    MaterialButton(
                      color: redColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Cancel',
                        style: h13HeadingWhiteBold,
                      ),
                    ),
                    MaterialButton(
                      color: kMainColor,
                      onPressed: () {
                        // Close the dialog
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Add',
                        style: h13HeadingWhiteBold,
                      ),
                    ),
                  ],
                  backgroundColor: kBrightColor,
                  titleStyle: TextStyle(color: kDarkColor),
                  radius: 30);
            },
            icon: const Icon(
              Icons.edit_outlined,
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
                ServicesEmployees(),
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
          ],
        ),
      ),
    );
  }
}
