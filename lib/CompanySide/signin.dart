import 'dart:async';

import 'package:employeeapp/CompanySide/bottom_navbar.dart';
import 'package:employeeapp/CompanySide/signinPassword.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CompanySignin extends StatelessWidget {
  final RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  CompanySignin({Key? key}) : super(key: key);

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
                CompanySigninPassword(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.fade,
              );
            },
            // onPressed: () => _doProgress(),
            child: Image.asset("assets/images/right-arrow.png")),
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
                  "What's your mobile number? ",
                  style: h20HeadingBlackBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    'Enter your mobile number below to start using this App.',
                    textAlign: TextAlign.center,
                    style: h14HeadingBlackSimple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'ES',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
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
