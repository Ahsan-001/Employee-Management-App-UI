import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateZoneView extends StatelessWidget {
  const CreateZoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: const Text("Create New Zone"),
        elevation: 0,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Get.to(
        //         const CreateZoneView(),
        //         transition: Transition.downToUp,
        //         duration: const Duration(milliseconds: 400),
        //       );
        //     },
        //     icon: Icon(
        //       Icons.create_outlined,
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFieldWidget(
              obsecure: false,
              leadingIcon: Icons.location_city,
              lable: 'Enter zone name',
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
              obsecure: false,
              leadingIcon: Icons.location_on,
              lable: 'Enter zone location',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  height: 50.0,
                  color: kMainColor,
                  onPressed: () {
                    Get.back();
                    Get.snackbar("Added zone", "'Zone name' added succesfully",
                        backgroundColor: kDarkLightColor,
                        colorText: kBrightColor);
                    // isLoading.value = true;
                    // if (GetUtils.isEmail(emailController.text)) {
                    //   await authController.logIn(
                    //       emailController.text,
                    //       passwordController.text);
                  },
                  child: const Text(
                    'CREATE',
                    style: h16HeadingWhiteBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
