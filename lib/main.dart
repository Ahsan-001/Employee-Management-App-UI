import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/checkAttendance.dart';
import 'package:employeeapp/CompanySide/HomeSection/employeeVerification.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/EmployeeSide/E_bottom_navbar.dart';
import 'package:employeeapp/Views/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.put(DropDownController());
  Get.put(SerivceTypeDropDownController());
  Get.put(SelectLocationDropDownController());
}

var kWidth = Get.width;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SCE International',
      home: SplashScreen(),
      // home: CheckEmployeeAttendance(),
    );
  }
}
