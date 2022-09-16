import 'package:employeeapp/CompanySide/HomeSection/AssignRoles/selectService.dart';
import 'package:employeeapp/CompanySide/HomeSection/MakePaymentToEmployee/selectZonePayment.dart';
import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/selectZone.dart';
import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/selectzonestoinvoice.dart';
import 'package:employeeapp/CompanySide/HomeSection/addEmployee.dart';
import 'package:employeeapp/CompanySide/HomeSection/faqs.dart';
import 'package:employeeapp/CompanySide/Settings/organizationProfile.dart';
import 'package:employeeapp/CompanySide/Settings/setting.dart';
import 'package:employeeapp/CompanySide/Zones/zoneHome.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_api.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_invoice_api.dart';
import 'package:employeeapp/EmployeeSide/issueBilling.dart';
import 'package:employeeapp/Models/invoice.dart';
import 'package:employeeapp/Models/supplier.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Chats/chats_screen.dart';
import 'package:employeeapp/Widgets/CdashboardCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: const Icon(
          Icons.search,
          color: kBrightColor,
        ),
        title: const CupertinoTextField(
          style: TextStyle(color: kBrightColor),
          placeholder: "Search Employees",
          placeholderStyle: TextStyle(color: Colors.white30),
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              children: [
                const Icon(
                  Icons.headphones,
                  color: kBrightColor,
                ),
                const Text(
                  "  HELP  ",
                  style: h14HeadingWhiteBold,
                ),
                PopupMenuButton(
                  onSelected: (result) {
                    switch (result) {
                      case 0:
                        _openZones(context);
                        break;
                      case 1:
                        _openOrgProfile(context);
                        break;
                      case 2:
                        _openFAQs(context);
                        break;
                      case 3:
                        _openSettings(context);
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      child: Text("Zones"),
                      value: 0,
                      // onTap: () => _openSettings(context),
                    ),
                    // const PopupMenuItem(value: 1, child: Text("Explore Plans")),
                    const PopupMenuItem(
                        value: 1, child: Text("Organization Detail")),
                    // const PopupMenuItem(value: 3, child: Text("Scan QR")),
                    const PopupMenuItem(value: 2, child: Text("Check FAQs")),
                    // const PopupMenuItem(value: 5, child: Text("Spotlight")),
                    // const PopupMenuItem(value: 6, child: Text("Work Timing")),
                    // const PopupMenuItem(value: 7, child: Text("Reports")),
                    const PopupMenuItem(value: 3, child: Text("Configure")),
                    // const PopupMenuItem(value: 9, child: Text("Settings")),
                  ],
                  initialValue: 0,
                  elevation: 3.2,
                  tooltip: 'This is Popup',
                  onCanceled: () => print("You have canceled the menu."),
                  // onSelected: (value) => print("value:$value"),
                  icon: const Icon(Icons.more_vert_outlined),
                )
              ],
              // IconButton(
              //   onPressed: (){

              //   },
              //   icon: Icon(
              //     Icons.more_vert_outlined,
              //     color: kBrightColor,
              //   ),
              // ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Wrap(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              runSpacing: 15,
              spacing: 15,
              children: [
                DashboardCards(
                  ontap: () {
                    Get.to(
                      AssignNewRoles(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  icon: Icons.edit_note,
                  text: "Assign New Roles",
                ),
                DashboardCards(
                  ontap: () {
                    Get.to(
                      AddEmployee(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  icon: Icons.add,
                  text: "Add Employee",
                ),
                DashboardCards(
                  ontap: () {
                    Get.to(
                      const ZonesView(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  text: "Create New Zones",
                  icon: Icons.new_label,
                ),
                DashboardCards(
                  ontap: () {
                    Get.to(
                      const SelectZoneToseeinvoice(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  icon: Icons.note,
                  text: "Issue Billing",
                ),
                DashboardCards(
                  icon: Icons.calendar_month,
                  text: "See Employee\n  Attendance",
                  ontap: () {
                    Get.to(
                      const SelectZoneToseeEmployees(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                ),
                DashboardCards(
                  ontap: () {
                    Get.to(
                      const SelectZoneToPEmployeePayment1(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  icon: Icons.payment,
                  text: "Make Payment to\nEmployee",
                ),
                DashboardCards(
                  ontap: () {
                    Get.to(
                      ChatsScreen(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  icon: Icons.chat,
                  text: "Chat With Employee",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _openZones(BuildContext context) async {
  print('settings');
  await Navigator.push(
      context, MaterialPageRoute(builder: (context) => const ZonesView()));
  print('zones completed');
}

Future<void> _openSettings(BuildContext context) async {
  print('settings');
  await Navigator.push(
      context, MaterialPageRoute(builder: (context) => const SettingsView()));
  print('settings completed');
}

Future<void> _openFAQs(BuildContext context) async {
  print('settings');
  await Navigator.push(
      context, MaterialPageRoute(builder: (context) => const FAQsView()));
  print('faqs completed');
}

Future<void> _openOrgProfile(BuildContext context) async {
  print('settings');
  await Navigator.push(context,
      MaterialPageRoute(builder: (context) => const OrganizationProfile()));
  print(' org profile completed');
}
