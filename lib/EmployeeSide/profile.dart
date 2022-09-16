import 'package:employeeapp/EmployeeSide/Services/pdf_api.dart';
import 'package:employeeapp/EmployeeSide/Services/pdf_invoice_api.dart';
import 'package:employeeapp/EmployeeSide/esetting.dart';
import 'package:employeeapp/Models/invoice.dart';
import 'package:employeeapp/Models/supplier.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeProfile extends StatelessWidget {
  const EmployeeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                const EmployeeSetting(),
                duration: const Duration(milliseconds: 400),
                transition: Transition.cupertino,
              );
            },
            icon: const Icon(
              Icons.settings,
              color: kBrightColor,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: kMainColor,
        title: const Text(
          'Employee Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            color: kMainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/employee.png',
                            height: 70,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '   username',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.phone,
                                      size: 15,
                                    ),
                                    Text('  0122354235'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.corporate_fare,
                                      size: 15,
                                    ),
                                    Text('  Maracaibo'),
                                  ],
                                ),
                              ]),
                        ]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.cleaning_services,
                      color: kMainColor,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Service',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Gardening',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/active.png',
                      color: kMainColor,
                      height: 23,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'User Status',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/shift.png',
                      color: kMainColor,
                      height: 23,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'SHIFT',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '9 TO 6',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/credit-card.png',
                      color: kMainColor,
                      height: 23,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'SALARY / Monthly',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '100000.0',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
