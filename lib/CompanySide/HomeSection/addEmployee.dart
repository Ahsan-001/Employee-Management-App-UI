import 'package:employeeapp/CompanySide/HomeSection/employeeVerification.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class AddEmployee extends StatelessWidget {
  AddEmployee({Key? key}) : super(key: key);
  final RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  final bookController = Get.find<DropDownController>();
  final serviceController = Get.find<SerivceTypeDropDownController>();

  final selected = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Add Employee"),
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
                const EmployeeVerification(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              );
            },
            // onPressed: () => _doProgress(),
            child: Image.asset("assets/images/right-arrow.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const ListTile(
              tileColor: kBrightColor,
              leading: Icon(
                Icons.person_add,
                color: kMainColor,
                size: 40,
              ),
              title: Text(
                "Add From Contacts",
                style: h16HeadingBlackBold,
              ),
              subtitle: Text(
                "Click to add employee from your contacts",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ListTile(
            //   tileColor: kBrightColor,
            //   leading: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: const [
            //       Text(
            //         "Need Help?",
            //         style: h20HeadingBlackBold,
            //       ),
            //       Text(
            //         "Click to chat with us.",
            //       ),
            //     ],
            //   ),
            //   trailing: Container(
            //     decoration: BoxDecoration(
            //         color: greenColor, borderRadius: BorderRadius.circular(10)),
            //     height: 30,
            //     child: const Padding(
            //       padding: EdgeInsets.all(5.0),
            //       child: Text(
            //         "TELL US",
            //         textAlign: TextAlign.center,
            //         style: h14HeadingWhiteBold,
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "BASIC DETAILS",
              style: h13HeadingBlackSimple.copyWith(color: kMainColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              cursorColor: kDarkColor,
              style: TextStyle(color: kBlackColor),
              decoration: InputDecoration(
                fillColor: kDarkLightColor,
                // border: InputBorder.none,
                // labelStyle: TextStyle(color: kDarkColor),
                icon: Icon(
                  Icons.person,
                  color: Colors.black38,
                ),
                hintText: "Employee name",
                hintStyle: TextStyle(color: kDarkColor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              cursorColor: kDarkColor,
              style: TextStyle(color: kBlackColor),
              decoration: InputDecoration(
                fillColor: kDarkLightColor,
                // border: InputBorder.none,
                // labelStyle: TextStyle(color: kDarkColor),
                icon: Icon(
                  Icons.location_city,
                  color: Colors.black38,
                ),
                hintText: "Zone name / Location",
                hintStyle: TextStyle(color: kDarkColor),
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.cleaning_services,
                      color: kDarkLightColor,
                    ),
                    DropdownButton(
                      // isExpanded: true,
                      // icon: Icon(Icons.cleaning_services),
                      hint: Text("Offer Service"),
                      // isExpanded: true,
                      onChanged: (newValue) {
                        serviceController.setSelected(newValue.toString());
                      },
                      value: serviceController.selected.value == ""
                          ? null
                          : serviceController.selected.value,
                      items: serviceController.listType.map((selectedType) {
                        return DropdownMenuItem(
                          child: Text(
                            selectedType,
                          ),
                          value: selectedType,
                        );
                      }).toList(),
                    ),
                  ],
                )),
            Container(
              height: 55,
              // decoration: BoxDecoration(
              //     border: Border.all(
              //       color: Colors.black12,
              //     ),
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: const TextStyle(color: Colors.black),
                initialValue: number,
                maxLength: 11,
                // textFieldController: controller,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: InputBorder.none,

                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/clock.png",
                          color: Colors.black,
                          height: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("9 TO 6"),
                      ],
                    ),
                    DropdownButton(
                      // isExpanded: true,
                      onChanged: (newValue) {
                        bookController.setSelected(newValue.toString());
                      },
                      value: bookController.selected.value == ""
                          ? null
                          : bookController.selected.value,
                      items: bookController.listType.map((selectedType) {
                        return DropdownMenuItem(
                          child: Text(
                            selectedType,
                          ),
                          value: selectedType,
                        );
                      }).toList(),
                    ),
                  ],
                )),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/holidays.png",
                          color: Colors.black,
                          height: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Default"),
                      ],
                    ),
                    DropdownButton(
                      // isExpanded: true,
                      onChanged: (newValue) {
                        bookController.setSelected(newValue.toString());
                      },
                      value: bookController.selected.value == ""
                          ? null
                          : bookController.selected.value,
                      items: bookController.listType.map((selectedType) {
                        return DropdownMenuItem(
                          child: Text(
                            selectedType,
                          ),
                          value: selectedType,
                        );
                      }).toList(),
                    ),
                  ],
                )),
            Row(
              children: [
                Container(
                  width: 170,
                  child: const TextField(
                    cursorColor: kDarkColor,
                    style: TextStyle(color: kBlackColor),
                    decoration: InputDecoration(
                        fillColor: kDarkLightColor,
                        // border: InputBorder.none,
                        // labelStyle: TextStyle(color: kDarkColor),
                        icon: Icon(
                          Icons.money,
                          color: Colors.black38,
                        ),
                        hintText: "SALARY",
                        hintStyle: TextStyle(color: kDarkColor),
                        suffix: Text("(PKR)")),
                  ),
                ),
                DropdownButton(
                  // isExpanded: true,
                  onChanged: (newValue) {
                    bookController.setSelected(newValue.toString());
                  },
                  value: bookController.selected.value == ""
                      ? null
                      : bookController.selected.value,
                  items: bookController.listType.map((selectedType) {
                    return DropdownMenuItem(
                      child: Text(
                        selectedType,
                        style: h14HeadingBlackSimple,
                      ),
                      value: selectedType,
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/info.png",
                  height: 18,
                  color: kDarkLightColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    "This salary is calculated based on daily attendance status Preent/Absent. The salary will not be calculated for a week off or holiday",
                    style:
                        h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
