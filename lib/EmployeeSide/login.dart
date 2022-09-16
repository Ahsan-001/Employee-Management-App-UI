import 'package:employeeapp/CompanySide/bottom_navbar.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/EmployeeSide/E_bottom_navbar.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeLogin extends StatelessWidget {
  const EmployeeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ButtonController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: kBrightColor,
            )),
        title: const Text("Employee Login"),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.headphones,
        //         color: kBrightColor,
        //       )),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Enter your login details below",
                style: h20HeadingBlackBold,
              ),
              const SizedBox(
                height: 10,
              ),
              // Expanded(
              //   flex: 0,
              //   child: RichText(
              //     text: const TextSpan(
              //       children: [
              //         TextSpan(
              //           text: '*You will not able to edit',
              //           style: h14HeadingBlackSimple,
              //         ),
              //         TextSpan(
              //           text: ' email addres and mobile number',
              //           style: h14HeadingBlackBold,
              //         ),
              //         TextSpan(
              //             text:
              //                 ' after registration, so please select the relevant email and mobile number.',
              //             style: h14HeadingBlackSimple),
              //       ],
              //     ),
              //   ),
              // ),
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
              // const TextFieldWidget(
              //   obsecure: false,
              //   leadingIcon: Icons.phone,
              //   lable: 'Enter phone number',
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const Icon(
              //         Icons.info,
              //         size: 18,
              //         color: kMainColor,
              //       ),
              //       Text(
              //         " Your registered mobile number *",
              //         style: h12HeadingBlackSimple.copyWith(
              //             color: kDarkLightColor),
              //       ),
              //     ],
              //   ),
              // ),
              // const TextFieldWidget(
              //   obsecure: false,
              //   leadingIcon: Icons.person,
              //   lable: 'Enter Name',
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const Icon(
              //         Icons.info,
              //         size: 18,
              //         color: kMainColor,
              //       ),
              //       Text(
              //         " Your company name / person name *",
              //         style: h12HeadingBlackSimple.copyWith(
              //             color: kDarkLightColor),
              //       ),
              //     ],
              //   ),
              // ),
              const TextFieldWidget(
                obsecure: false,
                leadingIcon: Icons.lock,
                lable: 'Enter your password',
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
                      " Your login password *",
                      style: h12HeadingBlackSimple.copyWith(
                          color: kDarkLightColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(right: 15),
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    height: 60.0,
                    color: kMainColor,
                    onPressed: () {
                      Get.to(const EBottomNavigationBarExample(),
                          transition: Transition.zoom,
                          duration: const Duration(milliseconds: 400));
                      // isLoading.value = true;
                      // if (GetUtils.isEmail(emailController.text)) {
                      //   await authController.logIn(
                      //       emailController.text,
                      //       passwordController.text);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          color: kFadedColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              //   SizedBox(
              //     height: 10,
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: const [
              //         Icon(
              //           Icons.person_add,
              //           size: 25,
              //           color: kMainColor,
              //         ),
              //         Text(
              //           "   Employee strength",
              //           style: h16HeadingBlackSimple,
              //         ),
              //       ],
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Icon(
              //           Icons.info,
              //           size: 18,
              //           color: kMainColor,
              //         ),
              //         Text(
              //           " Select your employee strength *",
              //           style: h12HeadingBlackSimple.copyWith(
              //               color: kDarkLightColor),
              //         ),
              //       ],
              //     ),
              //   ),
              //   OrderTypeButton(
              //     value: "0-10",
              //     title: "0-10",
              //   ),
              //   OrderTypeButton(
              //     value: "11-20",
              //     title: "11-20",
              //   ),
              //   OrderTypeButton(
              //     value: "21-40",
              //     title: "21-40",
              //   )
            ],
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

class OrderTypeButton extends StatelessWidget {
  final String value;
  final String title;

  const OrderTypeButton({
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GetBuilder<ButtonController>(
        builder: (buttonController) {
          return InkWell(
            onTap: () => buttonController.setOrderType(value),
            child: Row(
              children: [
                Radio(
                  value: value,
                  groupValue: buttonController.orderType,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (String? value) {
                    //buttonController.setOrderType(value!);
                  },
                  activeColor: kMainColor,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                ),
                const SizedBox(width: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
