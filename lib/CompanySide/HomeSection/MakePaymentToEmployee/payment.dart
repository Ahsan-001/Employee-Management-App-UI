import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Payment"),
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
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ 0.00",
                    style: h17HeadingBlackBold.copyWith(color: greenColor),
                  ),
                  const Text("DUE AMOUNT", style: h11HeadingBlackSimple),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            const TextFieldWidget(
              obsecure: false,
              leadingIcon: Icons.money,
              lable: '0.00',
              trailing: Text("\$"),
            ),
            const TextFieldWidget(
              obsecure: false,
              leadingIcon: Icons.note,
              lable: 'REMARkKS',
            ),
            const TextFieldWidget(
              obsecure: false,
              leadingIcon: Icons.calendar_month,
              lable: '10/09/2022',
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  height: 40.0,
                  color: greenColor,
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Payment Via",
                      backgroundColor: kBrightColor,
                      titleStyle: h17HeadingBlackBold,
                      actions: [
                        MaterialButton(
                          color: greyColor.shade200,
                          child: const Text(
                            "CLOSE",
                            style: h12HeadingBlackBold,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        MaterialButton(
                          color: kMainColor,
                          child: Text(
                            "CONFIRM",
                            style: h12HeadingBlackBold.copyWith(
                                color: kBrightColor),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        )
                      ],
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/bank-transfer.png",
                            height: 45,
                          ),
                          Image.asset(
                            "assets/images/paypal.png",
                            height: 70,
                          ),
                          Image.asset(
                            "assets/images/visa.png",
                            height: 45,
                          ),
                        ],
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.wallet,
                        color: kBrightColor,
                      ),
                      const Text(
                        '  PAY SALARY',
                        style: h14HeadingWhiteBold,
                      ),
                    ],
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
