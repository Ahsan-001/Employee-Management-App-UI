import 'dart:async';

import 'package:employeeapp/CompanySide/bottom_navbar.dart';
import 'package:employeeapp/CompanySide/signin.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/orderTypeButton.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CompanySignup extends StatelessWidget {
  final RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  CompanySignup({Key? key}) : super(key: key);

  // void _doProgress() async {
  //   Timer(const Duration(seconds: 2), () {
  //     btnControlller.success();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Get.put(ButtonController());
    return Scaffold(
      backgroundColor: kBrightColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: kBrightColor,
            )),
        title: const Text("Company Details"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.headphones,
                color: kBrightColor,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBrightColor,
        isExtended: true,
        onPressed: () {},
        child: RoundedLoadingButton(
            width: 40,
            color: kMainColor,
            controller: btnControlller,
            onPressed: () {
              Get.to(
                BottomNavigationBarExample(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.fade,
              );
            },
            // onPressed: () => _doProgress(),
            child: Image.asset("assets/images/check.png")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter your company details below",
                  style: h20HeadingBlackBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 0,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '*You will not able to edit',
                          style: h14HeadingBlackSimple,
                        ),
                        TextSpan(
                          text: ' email addres and mobile number',
                          style: h14HeadingBlackBold,
                        ),
                        TextSpan(
                            text:
                                ' after registration, so please select the relevant email and mobile number.',
                            style: h14HeadingBlackSimple),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Already have an account ? ",
                      style: TextStyle(
                        color: kDarkColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          CompanySignin(),
                          duration: const Duration(milliseconds: 400),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: const Text(
                        "SignIn",
                        style: TextStyle(
                          color: kMainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const TextFieldWidget(
                  obsecure: false,
                  leadingIcon: Icons.mail,
                  lable: 'Enter Email',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info,
                        size: 18,
                        color: kMainColor,
                      ),
                      Text(
                        " Your verified email address *",
                        style: h12HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ),
                const TextFieldWidget(
                  obsecure: false,
                  leadingIcon: Icons.phone,
                  lable: 'Enter phone number',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info,
                        size: 18,
                        color: kMainColor,
                      ),
                      Text(
                        " Your registered mobile number *",
                        style: h12HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ),
                const TextFieldWidget(
                  obsecure: false,
                  leadingIcon: Icons.person,
                  lable: 'Enter Name',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info,
                        size: 18,
                        color: kMainColor,
                      ),
                      Text(
                        " Your company name / person name *",
                        style: h12HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ),
                const TextFieldWidget(
                  obsecure: false,
                  leadingIcon: Icons.lock,
                  lable: 'Create your password',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info,
                        size: 18,
                        color: kMainColor,
                      ),
                      Text(
                        " Your admin login password *",
                        style: h12HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.person_add,
                        size: 25,
                        color: kMainColor,
                      ),
                      Text(
                        "   Employee strength",
                        style: h16HeadingBlackSimple,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info,
                        size: 18,
                        color: kMainColor,
                      ),
                      Text(
                        " Select your employee strength *",
                        style: h12HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ),
                const OrderTypeButton(
                  value: "0-10",
                  title: "0-10",
                ),
                const OrderTypeButton(
                  value: "11-20",
                  title: "11-20",
                ),
                const OrderTypeButton(
                  value: "21-40",
                  title: "21-40",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//   Widget addRadioButton(int btnIndex, String title) {
//     return Column(
//       // mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         GetBuilder<RadiobuttonController>(
//           builder: (_) => Radio(
//               activeColor: kMainColor,
//               value: radiobuttonController.strength[btnIndex],
//               groupValue: radiobuttonController.select,
//               onChanged: (value) =>
//                   radiobuttonController.onClickRadioButton(value)),
//         ),
//         Text(title)
//       ],
//     );
//   }
// }
}
