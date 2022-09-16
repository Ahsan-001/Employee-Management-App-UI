import 'package:employeeapp/CompanySide/HomeSection/MakePaymentToEmployee/payment.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckSalaryDetails extends StatelessWidget {
  const CheckSalaryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Salary Details"),
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
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Harry Smith",
                style: h18HeadingBlackBold,
              ),
            ),
            Divider(),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FROM DATE",
                    style: h12HeadingBlackSimple.copyWith(
                      color: kDarkLightColor,
                    ),
                  ),
                  Text(
                    "TO DATE",
                    style: h12HeadingBlackSimple.copyWith(
                      color: kDarkLightColor,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "01-Sep-2022",
                    style: h12HeadingBlackBold,
                  ),
                  Text(
                    "30-Sep-2022",
                    style: h12HeadingBlackBold,
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DATE",
                  style: h13HeadingBlackSimple.copyWith(color: blueColor),
                ),
                Text(
                  "PAID",
                  style: h13HeadingBlackSimple,
                ),
                Text(
                  "DUE",
                  style: h13HeadingBlackSimple,
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "09-Sep-2022",
                    style: h13HeadingBlackBold.copyWith(color: kDarkColor),
                  ),
                  Text(
                    "",
                    style: h13HeadingBlackSimple.copyWith(color: kBlackColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: greenColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "09-Sep-2022",
                    style: h13HeadingBlackBold.copyWith(color: kDarkColor),
                  ),
                  Text(
                    "",
                    style: h13HeadingBlackSimple.copyWith(color: kBlackColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: greenColor),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: h13HeadingBlackBold.copyWith(color: kDarkColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: kBlackColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: greenColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Amount",
                    style: h13HeadingBlackBold.copyWith(color: kDarkColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: kBlackColor),
                  ),
                  Text(
                    "0.00",
                    style: h13HeadingBlackSimple.copyWith(color: greenColor),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "DAYS WORKED",
                    style: h13HeadingBlackBold,
                  ),
                  Text(
                    "HRs WORKED",
                    style: h13HeadingBlackBold,
                  ),
                  Text(
                    "SALARY(DAILY)",
                    style: h13HeadingBlackBold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "0 / 1 Days",
                    style: h13HeadingBlackSimple.copyWith(color: blueColor),
                  ),
                  Text(
                    "00h 00m",
                    style: h13HeadingBlackSimple.copyWith(color: blueColor),
                  ),
                  Text(
                    "0.0 \$",
                    style: h13HeadingBlackSimple.copyWith(color: blueColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  height: 40.0,
                  color: greenColor,
                  onPressed: () {
                    Get.to(
                      PaymentView(),
                      transition: Transition.downToUp,
                      duration: Duration(milliseconds: 400),
                    );
                  },
                  child: const Text(
                    'PAYMENT',
                    style: h14HeadingWhiteBold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
