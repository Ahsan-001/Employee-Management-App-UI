import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class EmployeeAttendence extends StatefulWidget {
  const EmployeeAttendence({Key? key}) : super(key: key);

  @override
  _EmployeeAttendenceState createState() => _EmployeeAttendenceState();
}

class _EmployeeAttendenceState extends State<EmployeeAttendence> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                children: const [
                  Text(
                    'FROM DATE',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '01-Sep-2022',
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.calendar_month,
                color: greyColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: const [
                  Text(
                    'TO DATE',
                    style: TextStyle(color: greyColor, fontSize: 12),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '01-Sep-2022',
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: kBrightColor,
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
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text('Summary',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(
                            'till 03-September-2022',
                            style: TextStyle(fontSize: 13, color: greyColor),
                          ),
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
                          children: const [
                            Text('PRESENT DAYS',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor)),
                            Text('1 DAYS',
                                style:
                                    TextStyle(fontSize: 12, color: greenColor)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('WORKS HOURS',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor)),
                            Text('00h 00m',
                                style:
                                    TextStyle(fontSize: 12, color: greenColor)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('ABSENT DAYS',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor)),
                            Text('1 DAYS',
                                style:
                                    TextStyle(fontSize: 12, color: redColor)),
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
                          children: const [
                            Text('DAYS WORKED',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor)),
                            Text('2 DAYS',
                                style:
                                    TextStyle(fontSize: 12, color: blueColor)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('HRS WORKED',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor)),
                            Text('00h 00m',
                                style:
                                    TextStyle(fontSize: 12, color: blueColor)),
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
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Saturday',
                      style: TextStyle(color: greyColor, fontSize: 12),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward, color: greyColor),
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
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Sunday',
                      style: TextStyle(color: greyColor, fontSize: 12),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward, color: greyColor),
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
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Monday',
                          style: TextStyle(color: greyColor, fontSize: 12),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () => setState(() => isVisible = !isVisible),
                        child: isVisible == true
                            ? const Icon(Icons.arrow_downward_outlined,
                                color: greyColor)
                            : const Icon(Icons.arrow_forward,
                                color: greyColor)),
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
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              '00h 00m',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'break hrs'.toUpperCase(),
                              style: const TextStyle(
                                color: greyColor,
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
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              '9 TO 6',
                              style: TextStyle(fontSize: 12),
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
    );
  }
}
