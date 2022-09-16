import 'package:employeeapp/CompanySide/Plans/nextPlan.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class PlansView extends StatelessWidget {
  final RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  PlansView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        automaticallyImplyLeading: false,
        title: const Text("Plan Selection"),
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
                PlansView2(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.leftToRight,
              );
            },
            // onPressed: () => _doProgress(),
            child: Image.asset("assets/images/right-arrow.png")),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 160,
                  decoration: const BoxDecoration(
                    color: kBrightColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                        color: Colors.black12,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Try Paid Feature Free",
                          style: h20HeadingBlackBold,
                        ),
                        const Text(
                          "Get free Trial for 5 days of all paid features",
                          style: h16HeadingBlackSimple,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MaterialButton(
                          height: 40.0,
                          minWidth: 260,
                          color: kMainColor,
                          onPressed: () {
                            // Get.to(
                            //   AddEmployee(),
                            //   duration: const Duration(milliseconds: 400),
                            //   transition: Transition.downToUp,
                            // );
                          },
                          child: const Text(
                            'START MY FREE TRIAL NOW',
                            style: TextStyle(
                              color: kFadedColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Expanded(
                          child: Text(
                            "After completion of the free trial you will be downgraded to the basic plan",
                            textAlign: TextAlign.center,
                            style: h14HeadingBlackBold.copyWith(
                                color: Colors.black38),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.diamond_outlined,
                      size: 22,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Paid Plan Required",
                      style: h20HeadingBlackBold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'All In One Time Tracking Report ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              'feature is only available in the paid plan. Please, upgrade to the paid plan to use this feature'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 140,
                      color: kMainColor,
                      child: const Center(
                        child: Text(
                          "Elite",
                          textAlign: TextAlign.center,
                          style: h12HeadingWhiteBold,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration:
                          BoxDecoration(border: Border.all(color: kMainColor)),
                      child: const Center(
                        child: Text(
                          "Premium",
                          textAlign: TextAlign.center,
                          style: h12HeadingBlackBold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    color: kBrightColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                        color: Colors.black12,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Elite",
                              style: h20HeadingBlackBold,
                            ),
                            Image.asset(
                              "assets/images/check.png",
                              height: 18,
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: const [
                            Icon(
                              Icons.assistant_outlined,
                              color: kMainColor,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Suitable to power users who need accesss to the web portal or department wise reporting.",
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$ 1.49",
                          style:
                              h30HeadingBlackBold.copyWith(color: kMainColor),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "per employee per month",
                          style: h13HeadingBlackBold.copyWith(
                              color: Colors.black38),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 140,
                                color: kMainColor,
                                child: const Center(
                                  child: Text(
                                    "Yearly",
                                    textAlign: TextAlign.center,
                                    style: h12HeadingWhiteBold,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: kMainColor)),
                                child: const Center(
                                  child: Text(
                                    "Monthly",
                                    textAlign: TextAlign.center,
                                    style: h12HeadingBlackBold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ListTile(
                          title: Text("FactoTime Web Portal"),
                          trailing: Image.asset(
                            "assets/images/check.png",
                            height: 15,
                          ),
                        ),
                        ListTile(
                          title: Text("Attendance Remarks"),
                          trailing: Image.asset(
                            "assets/images/check.png",
                            height: 15,
                          ),
                        ),
                        ListTile(
                          title: Text("Department Wise Report"),
                          trailing: Image.asset(
                            "assets/images/check.png",
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
