import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminPunchView extends StatelessWidget {
  const AdminPunchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        automaticallyImplyLeading: false,
        title: const Text("Admin punch"),
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
      body: Center(
        child: Text(
          "Coming Soon!",
          style: h14HeadingBlackBold,
        ),
      ),
    );
  }
}
