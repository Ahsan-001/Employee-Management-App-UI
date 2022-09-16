import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class EmployeeVerification extends StatelessWidget {
  const EmployeeVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Employee Activation"),
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
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/gcheck.png",
              height: 40,
            ),
            Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: h22HeadingBlackBold.copyWith(color: greenColor),
            ),
            Text(
              "Employee has been created",
              textAlign: TextAlign.center,
              style: h16HeadingBlackSimple.copyWith(
                  color: greenColor, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Share below instructions with the employee to onboard him / her on SCE",
              textAlign: TextAlign.center,
              style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
            ),
            const Divider(),
            const Text(
              "Ask Employeet to Follow Below Steps",
              textAlign: TextAlign.center,
              style: h20HeadingBlackBold,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.cloud_download_outlined,
                color: kMainColor,
              ),
              title: const Text(
                "Step 1: Download App",
                style: h17HeadingBlackBold,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Ask employee to download SCE app from the Play Store / App Store",
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: kBrightColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "https://sceinternational.page.link/k677",
                      style: h12HeadingBlackBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.copy,
                      color: blueColor,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outlined,
                color: kMainColor,
              ),
              title: const Text(
                "Step 2: Login Credentials",
                style: h17HeadingBlackBold,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ask employee to login with below credentials",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mobile Number",
                    style: h13HeadingBlackSimple.copyWith(
                      color: blueColor,
                    ),
                  ),
                  const Text(
                    "+934 782323390",
                    style: h13HeadingBlackBold,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Password",
                    style: h13HeadingBlackSimple.copyWith(
                      color: blueColor,
                    ),
                  ),
                  const Text(
                    "Kif6A0LQ012",
                    style: h13HeadingBlackBold,
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            MaterialButton(
              height: 50.0,
              minWidth: 260,
              color: kMainColor,
              onPressed: () {
                // Get.to(
                //   AddEmployee(),
                //   duration: const Duration(milliseconds: 400),
                //   transition: Transition.downToUp,
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.share,
                    color: kBrightColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'START WITH EMPLOYEE',
                    style: TextStyle(
                      color: kFadedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
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
