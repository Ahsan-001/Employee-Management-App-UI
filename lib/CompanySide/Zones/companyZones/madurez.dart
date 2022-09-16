import 'package:employeeapp/CompanySide/HomeSection/addEmployee.dart';
import 'package:employeeapp/CompanySide/Zones/attendanace.dart';
import 'package:employeeapp/CompanySide/Zones/salary.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MadurezView extends StatefulWidget {
  const MadurezView({Key? key}) : super(key: key);

  @override
  State<MadurezView> createState() => _MadurezView();
}

class _MadurezView extends State<MadurezView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: const Text("Madurez"),
        elevation: 0,
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  height: 40.0,
                  minWidth: 260,
                  color: kMainColor,
                  onPressed: () {
                    Get.to(
                      AddEmployee(),
                      duration: const Duration(milliseconds: 400),
                      transition: Transition.downToUp,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: kBrightColor,
                      ),
                      Text(
                        ' ADD EMPLOYEE',
                        style: TextStyle(
                          color: kFadedColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                  color: kDarkLightColor,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TabBar(
            //       labelStyle: const TextStyle(fontSize: 15),
            //       labelColor: kMainColor,
            //       unselectedLabelColor: kBlackColor,
            //       indicatorSize: TabBarIndicatorSize.tab,
            //       indicatorColor: Colors.black,
            //       controller: tabController,
            //       isScrollable: true,
            //       tabs: const [
            //         Tab(
            //           text: 'ATTENDANCE',
            //         ),
            //         Tab(
            //           text: 'SALARY',
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   // color: redColor,
            //   height: MediaQuery.of(context).size.height,
            //   // width: 300,
            //   child: TabBarView(
            //     controller: tabController,
            //     children: const [
            //       AttendanceView(),
            //       SalaryView(),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
