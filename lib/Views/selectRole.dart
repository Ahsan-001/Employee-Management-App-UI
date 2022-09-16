import 'package:employeeapp/CompanySide/signup.dart';
import 'package:employeeapp/EmployeeSide/login.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: kBrightColor,
            )),
        backgroundColor: kMainColor,
        title: const Text("Your Role"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select Your Role",
                style: h25HeadingBlackBold,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Get.to(
                    duration: const Duration(milliseconds: 400),
                    transition: Transition.leftToRightWithFade,
                    CompanySignup()),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/company.png",
                          color: kMainColor,
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "I am a Business Owner / Admin / HR",
                                  style: h13HeadingBlackBold,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Use this option if you want to capture attendance of other employees",
                                  style: h12HeadingBlackSimple,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Get.to(
                    duration: const Duration(milliseconds: 400),
                    transition: Transition.rightToLeft,
                    EmployeeLogin()),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/user.png",
                          color: kMainColor,
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "I am an Employee",
                                  style: h13HeadingBlackBold,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Use this option if you want to punch or mark attendance as an employees",
                                  style: h12HeadingBlackSimple,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
