import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        title: const Text('Calender & Holidays'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 500,
                child: SfCalendar(
                  view: CalendarView.month,
                  showWeekNumber: true,
                  weekNumberStyle: const WeekNumberStyle(
                    backgroundColor: kMainColor,
                    textStyle: h15HeadingWhiteSimple,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
