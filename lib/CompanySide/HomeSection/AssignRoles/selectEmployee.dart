import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Models/ChatMessage.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Chats/chats_screen.dart';
import 'package:employeeapp/Views/Messages/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectEmployee extends StatelessWidget {
  SelectEmployee({Key? key}) : super(key: key);
  final CheckController1 ctrl1 = Get.put(CheckController1());
  final CheckController2 ctrl2 = Get.put(CheckController2());
  final CheckController3 ctrl3 = Get.put(CheckController3());
  final CheckController4 ctrl4 = Get.put(CheckController4());
  final CheckController5 ctrl5 = Get.put(CheckController5());
  final CheckController6 ctrl6 = Get.put(CheckController6());
  final CheckController7 ctrl7 = Get.put(CheckController7());

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
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl1.checkbool.value,
                  onChanged: (value) {
                    ctrl1.checkbool.value = !ctrl1.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl2.checkbool.value,
                  onChanged: (value) {
                    ctrl2.checkbool.value = !ctrl2.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl3.checkbool.value,
                  onChanged: (value) {
                    ctrl3.checkbool.value = !ctrl3.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl4.checkbool.value,
                  onChanged: (value) {
                    ctrl4.checkbool.value = !ctrl4.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl5.checkbool.value,
                  onChanged: (value) {
                    ctrl5.checkbool.value = !ctrl5.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl6.checkbool.value,
                  onChanged: (value) {
                    ctrl6.checkbool.value = !ctrl6.checkbool.value;
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/employee.png"),
              title: const Text(
                "Ahsan",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Select Employee to chat",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              trailing: Obx(
                () => Checkbox(
                  value: ctrl7.checkbool.value,
                  onChanged: (value) {
                    ctrl7.checkbool.value = !ctrl7.checkbool.value;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: 260,
              color: kMainColor,
              onPressed: () {
                Get.to(
                  MessagesScreen(),
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.rightToLeft,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Next',
                    style: TextStyle(
                      color: kFadedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kBrightColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
