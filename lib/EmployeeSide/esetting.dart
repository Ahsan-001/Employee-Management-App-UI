import 'dart:ui';

import 'package:employeeapp/CompanySide/Settings/privacyPolicy.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_api.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_invoice_api.dart';
import 'package:employeeapp/EmployeeSide/calendar.dart';
import 'package:employeeapp/EmployeeSide/changepassword.dart';
import 'package:employeeapp/Models/invoice.dart';
import 'package:employeeapp/Models/supplier.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class EmployeeSetting extends StatelessWidget {
  const EmployeeSetting({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "EMPLOYEE CONFIGURATION",
                style: h14HeadingBlackBold,
              ),
            ),
            SettingsCard(
              ontap: () {
                Get.to(
                  Calender(),
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.downToUp,
                );
              },
              img: "assets/images/holidays.png",
              title: "Calender and Holidays",
            ),
            ListTile(
              onTap: () async {
                final date = DateTime.now();
                final dueDate = date.add(const Duration(days: 7));
                final invoice = Invoice(
                  supplier: const Supplier(
                    name: 'Sarah Field',
                    address: 'Spain Street 9 madrid, barsolna',
                    paymentInfo: 'https://paypal.me/sarahfieldzz',
                  ),
                  // customer: Customer(
                  //   name: 'Apple Inc.',
                  //   address: 'Apple Street, Cupertino, CA 95014',
                  // ),
                  info: InvoiceInfo(
                    date: date,
                    dueDate: dueDate,
                    description: 'My description...',
                    number: '${DateTime.now().year}-9999',
                  ),
                  items: [
                    InvoiceItem(
                        description: 'Gardening',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 5.99,
                        serviceoforder: '0.3'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: '0.6'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: '0.7'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: '0.5'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: '0.9'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: '0.2'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: const Icon(Icons.picture_as_pdf_outlined,
                  color: kDarkLightColor),
              title: const Text("Invoice"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Others",
                style: h14HeadingBlackBold,
              ),
            ),
            SettingsCard(
              ontap: () {
                Get.to(
                  ForwardPassword(),
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.downToUp,
                );
              },
              img: "assets/images/change_password.png",
              title: "Change Password",
            ),
            SettingsCard(
              ontap: () {
                Get.to(const TermsAndconditions());
              },
              img: "assets/images/terms.png",
              title: "Privacy Policy",
            ),
            const SizedBox(
              height: 15,
            ),
            SettingsCard(
              ontap: () {
                Get.to(const SplashScreen());
              },
              img: "assets/images/logout.png",
              title: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String? img;
  final String? title;
  final VoidCallback? ontap;
  const SettingsCard({
    this.img,
    this.title,
    this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      tileColor: kBrightColor,
      leading: Image.asset(
        img!,
        height: 23,
        color: kDarkLightColor,
      ),
      title: Text(
        title!,
        style: h14HeadingBlackSimple,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: kDarkLightColor,
      ),
    );
  }
}
