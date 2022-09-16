import 'package:employeeapp/CompanySide/HomeSection/faqs.dart';
import 'package:employeeapp/CompanySide/Services/servicesEmployees.dart';
import 'package:employeeapp/CompanySide/Settings/about.dart';
import 'package:employeeapp/CompanySide/Settings/organizationProfile.dart';
import 'package:employeeapp/CompanySide/Settings/privacyPolicy.dart';
import 'package:employeeapp/CompanySide/Zones/zoneHome.dart';
import 'package:employeeapp/EmployeeSide/calendar.dart';
import 'package:employeeapp/EmployeeSide/changepassword.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/splash.dart';
import 'package:employeeapp/Widgets/settingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Settings"),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "ORGANIZATION MANAGEMENT",
                style: h14HeadingBlackBold,
              ),
            ),
            SettingsCard(
              img: "assets/images/employees.png",
              title: "Employees",
              ontap: () {
                Get.to(const ServicesEmployees());
              },
            ),
            SettingsCard(
              img: "assets/images/departments.png",
              title: "Zones Settings",
              ontap: () {
                Get.to(const ZonesView());
              },
            ),

            SettingsCard(
              ontap: () {
                Get.to(const Calender());
              },
              img: "assets/images/calender.png",
              title: "Calender",
            ),
            // const SettingsCard(
            //   img: "assets/images/holidays.png",
            //   title: "Holidays",
            // ),
            SettingsCard(
              ontap: () {
                Get.to(const OrganizationProfile());
              },
              img: "assets/images/settings.png",
              title: "Organization Configuration",
            ),
            SettingsCard(
              ontap: () {
                Get.to(const FAQsView());
              },
              img: "assets/images/faqs.png",
              title: "FAQs",
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "OTHERS",
                style: h14HeadingBlackBold,
              ),
            ),
            SettingsCard(
              ontap: () {
                Get.to(ForwardPassword());
              },
              img: "assets/images/change_password.png",
              title: "Change Password",
            ),
            SettingsCard(
              img: "assets/images/info.png",
              title: "About Us",
              ontap: () {
                Get.to(AboutOrganization());
              },
            ),
            // SettingsCard(
            //   img: "assets/images/terms.png",
            //   title: "Terms & Conditions",
            //   ontap: () {
            //     Get.to(TermsAndconditions());
            //   },
            // ),
            SettingsCard(
              img: "assets/images/terms.png",
              title: "Privacy Policy",
              ontap: () {
                Get.to(const TermsAndconditions());
              },
            ),
            // SettingsCard(
            //   img: "assets/images/settings.png",
            //   title: "Chat Support",
            //   ontap: () {
            //     Get.to(ChatsScreen());
            //   },
            // ),
            const SizedBox(
              height: 15,
            ),
            SettingsCard(
              img: "assets/images/logout.png",
              title: "Logout",
              ontap: () {
                Get.to(const SplashScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
