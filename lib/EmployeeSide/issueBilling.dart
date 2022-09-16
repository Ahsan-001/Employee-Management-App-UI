import 'dart:typed_data';
import 'package:employeeapp/EmployeeSide/Services/pdf_api.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_invoice_api.dart';
import 'package:employeeapp/Models/invoice.dart';
import 'package:employeeapp/Models/supplier.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class IssueBilling extends StatefulWidget {
  const IssueBilling({Key? key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning  // that it has a State object (defined below) that contains fields that affect  // how it looks.
  // This class is the configuration for the state. It holds the values (in this  // case the title) provided by the parent (in this case the App widget) and  // used by the build method of the State. Fields in a Widget subclass are  // always marked "final".
  final String? title;
  @override
  _IssueBillingState createState() => _IssueBillingState();
}

class _IssueBillingState extends State<IssueBilling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Create PDF Invoice'),
          onPressed: () async {
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
                  serviceoforder: 'service',
                  description: 'installation',
                  date: DateTime.now(),
                  quantity: 8,
                  vat: 0.19,
                  unitPrice: 3.99,
                ),
                InvoiceItem(
                    description: 'Service of',
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
        ),
      ),
    );
  }

//   Future<void> _createPDF() async {
//     PdfDocument document = PdfDocument();
//     final page = document.pages.add();
//     page.graphics.drawString('Welcome to PDF Succinctly!',
//         PdfStandardFont(PdfFontFamily.helvetica, 30));
//     page.graphics.drawImage(
//         PdfBitmap(await _readImageData('Pdf_Succinctly.jpg')),
//         const Rect.fromLTWH(0, 100, 440, 550));
//     PdfGrid grid = PdfGrid();
//     grid.style = PdfGridStyle(
//         font: PdfStandardFont(PdfFontFamily.helvetica, 30),
//         cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2));
//     grid.columns.add(count: 3);
//     grid.headers.add(1);
//     PdfGridRow header = grid.headers[0];
//     header.cells[0].value = 'Roll No';
//     header.cells[1].value = 'Name';
//     header.cells[2].value = 'Class';
//     PdfGridRow row = grid.rows.add();
//     row.cells[0].value = '1';
//     row.cells[1].value = 'Arya';
//     row.cells[2].value = '6';
//     row = grid.rows.add();
//     row.cells[0].value = '2';
//     row.cells[1].value = 'John';
//     row.cells[2].value = '9';
//     row = grid.rows.add();
//     row.cells[0].value = '3';
//     row.cells[1].value = 'Tony';
//     row.cells[2].value = '8';
//     grid.draw(
//         page: document.pages.add(), bounds: const Rect.fromLTWH(0, 0, 0, 0));

//     List<int> bytes = document.save() as List<int>;
//     document.dispose();
//     // document.dispose();
//     saveAndLaunchFile(bytes, 'Output.pdf');
//   }
// }

// Future<Uint8List> _readImageData(String name) async {
//   final data = await rootBundle.load('images/$name');
//   return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
// }

// Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
//   final path = (await getExternalStorageDirectory())?.path;
//   final file = File('$path/$fileName');
//   await file.writeAsBytes(bytes, flush: true);
//   OpenFile.open('$path/$fileName');
// }
}
