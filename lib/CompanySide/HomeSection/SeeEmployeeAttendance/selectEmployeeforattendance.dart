import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/checkAttendance.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Models/ChatMessage.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectEmployeeforAttendance extends StatelessWidget {
  const SelectEmployeeforAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Select Employee"),
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
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Select employee to see attendance",
                textAlign: TextAlign.center,
                style: h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "James Hook",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Gardening",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl1.checkbool.value,
              //     onChanged: (value) {
              //       ctrl1.checkbool.value = !ctrl1.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Jenny Wilson",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Cleaning ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl2.checkbool.value,
              //     onChanged: (value) {
              //       ctrl2.checkbool.value = !ctrl2.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Ralph Edwards",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl3.checkbool.value,
              //     onChanged: (value) {
              //       ctrl3.checkbool.value = !ctrl3.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_5.png"),
              title: const Text(
                "Jacob Jones",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl4.checkbool.value,
              //     onChanged: (value) {
              //       ctrl4.checkbool.value = !ctrl4.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "Esther Howard",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Carpentry ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl5.checkbool.value,
              //     onChanged: (value) {
              //       ctrl5.checkbool.value = !ctrl5.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Albert Flores",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl6.checkbool.value,
              //     onChanged: (value) {
              //       ctrl6.checkbool.value = !ctrl6.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Harry Smith",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl7.checkbool.value,
              //     onChanged: (value) {
              //       ctrl7.checkbool.value = !ctrl7.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "James Hook",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl1.checkbool.value,
              //     onChanged: (value) {
              //       ctrl1.checkbool.value = !ctrl1.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Jenny Wilson",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Barcelona",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl2.checkbool.value,
              //     onChanged: (value) {
              //       ctrl2.checkbool.value = !ctrl2.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Ralph Edwards",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl3.checkbool.value,
              //     onChanged: (value) {
              //       ctrl3.checkbool.value = !ctrl3.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_5.png"),
              title: const Text(
                "Jacob Jones",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Painting ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl4.checkbool.value,
              //     onChanged: (value) {
              //       ctrl4.checkbool.value = !ctrl4.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "Esther Howard",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Painting ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl5.checkbool.value,
              //     onChanged: (value) {
              //       ctrl5.checkbool.value = !ctrl5.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Albert Flores",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Carpentry ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl6.checkbool.value,
              //     onChanged: (value) {
              //       ctrl6.checkbool.value = !ctrl6.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Harry Smith",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl7.checkbool.value,
              //     onChanged: (value) {
              //       ctrl7.checkbool.value = !ctrl7.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            const SizedBox(
              height: 30,
            ),
            // MaterialButton(
            //   height: 50.0,
            //   minWidth: 260,
            //   color: kMainColor,
            //   onPressed: () {
            //     Get.to(
            //       MessagesScreen(),
            //       duration: const Duration(milliseconds: 400),
            //       transition: Transition.rightToLeft,
            //     );
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const [
            //       Text(
            //         'Next',
            //         style: TextStyle(
            //           color: kFadedColor,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Icon(
            //         Icons.arrow_forward_ios,
            //         color: kBrightColor,
            //         size: 20,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
