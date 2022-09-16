import 'package:employeeapp/CompanySide/HomeSection/SeeEmployeeAttendance/checkAttendance.dart';
import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_api.dart';
import 'package:employeeapp/Models/ChatMessage.dart';
import 'package:employeeapp/Models/invoice.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../EmployeeSide/Services/pdf_invoice_api.dart';
import '../../../Models/supplier.dart';

class SelectEmployeeforinvoice extends StatelessWidget {
  const SelectEmployeeforinvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Select Employee"),
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Select employee to see invoice",
                textAlign: TextAlign.center,
                style: h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "James Hook",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Gardening",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl1.checkbool.value,
              //     onChanged: (value) {
              //       ctrl1.checkbool.value = !ctrl1.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Jenny Wilson",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Cleaning ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl2.checkbool.value,
              //     onChanged: (value) {
              //       ctrl2.checkbool.value = !ctrl2.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Ralph Edwards",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl3.checkbool.value,
              //     onChanged: (value) {
              //       ctrl3.checkbool.value = !ctrl3.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_5.png"),
              title: const Text(
                "Jacob Jones",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl4.checkbool.value,
              //     onChanged: (value) {
              //       ctrl4.checkbool.value = !ctrl4.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "Esther Howard",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Carpentry ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl5.checkbool.value,
              //     onChanged: (value) {
              //       ctrl5.checkbool.value = !ctrl5.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Albert Flores",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl6.checkbool.value,
              //     onChanged: (value) {
              //       ctrl6.checkbool.value = !ctrl6.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Harry Smith",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl7.checkbool.value,
              //     onChanged: (value) {
              //       ctrl7.checkbool.value = !ctrl7.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "James Hook",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Stocks",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl1.checkbool.value,
              //     onChanged: (value) {
              //       ctrl1.checkbool.value = !ctrl1.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Jenny Wilson",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Barcelona",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl2.checkbool.value,
              //     onChanged: (value) {
              //       ctrl2.checkbool.value = !ctrl2.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Ralph Edwards",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl3.checkbool.value,
              //     onChanged: (value) {
              //       ctrl3.checkbool.value = !ctrl3.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_5.png"),
              title: const Text(
                "Jacob Jones",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Painting ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl4.checkbool.value,
              //     onChanged: (value) {
              //       ctrl4.checkbool.value = !ctrl4.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_2.png"),
              title: const Text(
                "Esther Howard",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Painting ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl5.checkbool.value,
              //     onChanged: (value) {
              //       ctrl5.checkbool.value = !ctrl5.checkbool.value;
              //     },
              //   ),
              // ),
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
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Cleaning',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 0.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Construction',
                        date: DateTime.now(),
                        quantity: 3,
                        vat: 0.19,
                        unitPrice: 2.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'installation',
                        date: DateTime.now(),
                        quantity: 8,
                        vat: 0.19,
                        unitPrice: 3.99,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'painting',
                        date: DateTime.now(),
                        quantity: 1,
                        vat: 0.19,
                        unitPrice: 1.59,
                        serviceoforder: 'service'),
                    InvoiceItem(
                        description: 'Stocks',
                        date: DateTime.now(),
                        quantity: 4,
                        vat: 0.19,
                        unitPrice: 1.29,
                        serviceoforder: 'service'),
                  ],
                );
                final pdfFile = await PdfInvoiceApi.generate(invoice);
                PdfApi.openFile(pdfFile);
              },
              leading: Image.asset("assets/images/user_3.png"),
              title: const Text(
                "Albert Flores",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Carpentry ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl6.checkbool.value,
              //     onChanged: (value) {
              //       ctrl6.checkbool.value = !ctrl6.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            ListTile(
              onTap: () => Get.to(
                CheckEmployeeAttendance(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.rightToLeft,
              ),
              leading: Image.asset("assets/images/user_4.png"),
              title: const Text(
                "Harry Smith",
                style: h18HeadingBlackBold,
              ),
              subtitle: Text(
                "Construction ",
                style: h12HeadingBlackSimple.copyWith(color: kDarkLightColor),
              ),
              // trailing: Obx(
              //   () => Checkbox(
              //     value: ctrl7.checkbool.value,
              //     onChanged: (value) {
              //       ctrl7.checkbool.value = !ctrl7.checkbool.value;
              //     },
              //   ),
              // ),
            ),
            const SizedBox(
              height: 30,
            ),
            // MaterialButton(
            //   height: 50.0,
            //   minWidth: 260,
            //   color: kMainColor,
            //   onPressed: () {
            //     Get.to(
            //       MessagesScreen(),
            //       duration: const Duration(milliseconds: 400),
            //       transition: Transition.rightToLeft,
            //     );
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const [
            //       Text(
            //         'Next',
            //         style: TextStyle(
            //           color: kFadedColor,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Icon(
            //         Icons.arrow_forward_ios,
            //         color: kBrightColor,
            //         size: 20,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
