import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckEmployeeAttendance extends StatefulWidget {
  const CheckEmployeeAttendance({Key? key}) : super(key: key);

  @override
  State<CheckEmployeeAttendance> createState() =>
      _CheckEmployeeAttendanceState();
}

class _CheckEmployeeAttendanceState extends State<CheckEmployeeAttendance> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Employee Attendance"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Image.asset("assets/images/user_4.png"),
                title: const Text(
                  "Harry Smith",
                  style: h18HeadingBlackBold,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    const Text(
                      'FROM DATE',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      '01-Sep-2022',
                      style: TextStyle(),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                const Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    const Text(
                      'TO DATE',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      '01-Sep-2022',
                      style: const TextStyle(),
                    ),
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text('Summary',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('till 03-September-2022',
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ],
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text('PRESENT DAYS',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              const Text('1 DAYS',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green)),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('WORKS HOURS',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              const Text('00h 00m',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.green)),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('ABSENT DAYS',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              const Text('1 DAYS',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.red)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text('DAYS WORKED',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              const Text('2 DAYS',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('HRS WORKED',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              const Text('00h 00m',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        '01-Sep-2022',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Saturaday',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward, color: Colors.grey),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        '02-Sep-2022',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Sunday',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward, color: Colors.grey),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '03-Sep-2022',
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Monday',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      GestureDetector(
                          onTap: () => setState(() => isVisible = !isVisible),
                          child: isVisible == true
                              ? const Icon(Icons.arrow_downward_outlined,
                                  color: Colors.grey)
                              : const Icon(Icons.arrow_forward,
                                  color: Colors.grey)),
                    ],
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'working hrs'.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '00h 00m',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'break hrs'.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '00h 00m(0)',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'shift'.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '9 TO 6',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
