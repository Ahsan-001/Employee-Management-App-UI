import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/selectEmployeeforattendance.dart';
import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/selectemployeetoseeinvoice.dart';
import 'package:employeeapp/CompanySide/Services/servicesEmployees.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SelectZoneToseeinvoice extends StatelessWidget {
  const SelectZoneToseeinvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Select Zone"),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Select zone to see employees",
                textAlign: TextAlign.center,
                style: h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Maracaibo",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Barcelona",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Madurez",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Los andes",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Valencia",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Caracas",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Templo de caracas",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => Get.to(
                SelectEmployeeforinvoice(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              tileColor: kBrightColor,
              title: const Text(
                "Compras venezuela",
                style: h17HeadingBlackBold,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
