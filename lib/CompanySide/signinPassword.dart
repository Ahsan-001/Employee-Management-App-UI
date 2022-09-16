import 'dart:async';

import 'package:employeeapp/CompanySide/bottom_navbar.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CompanySigninPassword extends StatelessWidget {
  final RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  CompanySigninPassword({Key? key}) : super(key: key);

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
        title: const Text("Get Started"),
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
                transition: Transition.leftToRight,
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
                  "What's your password? ",
                  style: h20HeadingBlackBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    'Enter your Pasword below to login to this App.',
                    textAlign: TextAlign.center,
                    style: h14HeadingBlackSimple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorHeight: 20,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: "Enter your password",
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kMainColor, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kMainColor, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kMainColor, width: 1.5),
                    ),
                  ),
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

// class OrderTypeButton extends StatelessWidget {
//   final String value;
//   final String title;

//   const OrderTypeButton({
//     required this.value,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: GetBuilder<ButtonController>(
//         builder: (buttonController) {
//           return InkWell(
//             onTap: () => buttonController.setOrderType(value),
//             child: Row(
//               children: [
//                 Radio(
//                   value: value,
//                   groupValue: buttonController.orderType,
//                   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   onChanged: (String? value) {
//                     //buttonController.setOrderType(value!);
//                   },
//                   activeColor: kMainColor,
//                 ),
//                 const SizedBox(width: 10),
//                 Text(
//                   title,
//                 ),
//                 const SizedBox(width: 5),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
