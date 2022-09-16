import 'package:employeeapp/CompanySide/Reports/punchView.dart';
import 'package:employeeapp/CompanySide/Reports/qr_code.dart';
import 'package:employeeapp/CompanySide/Reports/time_tracking.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class ReportsNavBar extends StatefulWidget {
  const ReportsNavBar({Key? key}) : super(key: key);

  @override
  State<ReportsNavBar> createState() => _ReportsNavBarState();
}

class _ReportsNavBarState extends State<ReportsNavBar> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kTabPages = [
      PunchView(),
      QRView(),
      TimeTrackingView(),
    ];
    final kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Reports"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.qr_code), label: "Admin Punch"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month), label: "Plans"),
    ];
    assert(kTabPages.length == kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: kMainColor,
      items: kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(
          () {
            _currentTabIndex = index;
          },
        );
      },
    );
    return Scaffold(
      body: kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
