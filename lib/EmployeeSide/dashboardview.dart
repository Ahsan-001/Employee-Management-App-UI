import 'package:employeeapp/EmployeeSide/dashboard/homescreen.dart';
import 'package:employeeapp/EmployeeSide/timetracking.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Messages/message_screen.dart';
import 'package:flutter/material.dart';

class EmployeeDashboard extends StatefulWidget {
  const EmployeeDashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kTabPages = [
      EmployeeHomeScreen(),
      MessagesEmpyeeScreen(),
      TimeTracking(),
    ];
    final kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        // activeIcon: Icon(Icons.dashboard),
        icon: Icon(Icons.home),
        label: "Home",
      ),
      const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today), label: "Time Tracking"),
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
