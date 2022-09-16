import 'package:employeeapp/EmployeeSide/Services/manage_services.dart';
import 'package:employeeapp/EmployeeSide/dashboard/homescreen.dart';
import 'package:employeeapp/EmployeeSide/timetracking.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Messages/message_screen.dart';
import 'package:flutter/material.dart';

class EBottomNavigationBarExample extends StatefulWidget {
  const EBottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EBottomNavigationBarExampleState();
}

class _EBottomNavigationBarExampleState
    extends State<EBottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kTabPages = [
      EmployeeHomeScreen(),
      MessagesEmpyeeScreen(),
      // ReportsNavBar(),
      ManageServices(),
      // PlansView(),
      TimeTracking(),
    ];
    final kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          // activeIcon: Icon(Icons.dashboard),
          icon: Icon(Icons.home_filled),
          label: "Home"),
      const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.cleaning_services), label: "Services"),
      // const BottomNavigationBarItem(
      //     icon: Icon(Icons.assistant), label: "Plans"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person), label: "Attendance\n   & Salary"),
    ];
    assert(kTabPages.length == kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      elevation: 0,
      iconSize: 20,
      selectedFontSize: 14,
      selectedItemColor: kMainColor,
      unselectedFontSize: 11,
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
