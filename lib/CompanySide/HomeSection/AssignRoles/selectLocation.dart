import 'dart:ui';

import 'package:employeeapp/CompanySide/HomeSection/AssignRoles/selectEmployee.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SelectLocation extends StatelessWidget {
  SelectLocation({Key? key}) : super(key: key);
  final selectController = Get.find<SelectLocationDropDownController>();

  @override
  Widget build(BuildContext context) {
    Get.put(SelectLocationDropDownController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Select Location"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              width: double.infinity,
              // decoration: BoxDecoration(
              //     // color: kFadedColor,
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: kMainColor)),
              child: TextField(
                cursorColor: kDarkColor,
                style: const TextStyle(color: kBlackColor),
                decoration: InputDecoration(
                  fillColor: kDarkLightColor,
                  // border: InputBorder.none,
                  // labelStyle: TextStyle(color: kDarkColor),
                  icon: const Icon(
                    Icons.location_city,
                    color: kMainColor,
                  ),
                  hintText: "Enter Location",
                  hintStyle: const TextStyle(color: kDarkColor),
                  suffixIcon: DropdownButton(
                    // isExpanded: true,
                    onChanged: (newValue) {
                      selectController.setSelected(newValue.toString());
                    },
                    value: selectController.selected.value == ""
                        ? null
                        : selectController.selected.value,
                    items: selectController.listType.map(
                      (selectedType) {
                        return DropdownMenuItem(
                          value: selectedType,
                          child: Text(
                            selectedType,
                            style: h13HeadingBlackBold,
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: 260,
              color: kMainColor,
              onPressed: () {
                Get.to(
                  SelectEmployee(),
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.rightToLeft,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Next',
                    style: TextStyle(
                      color: kFadedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kBrightColor,
                    size: 20,
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
