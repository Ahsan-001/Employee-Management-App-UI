import 'package:employeeapp/CompanySide/Reports/reports.dart';
import 'package:employeeapp/CompanySide/Reports/reportsNavbar.dart';
import 'package:employeeapp/CompanySide/Services/service.dart';
import 'package:employeeapp/CompanySide/Settings/setting.dart';
import 'package:employeeapp/CompanySide/adminPunch.dart';
import 'package:employeeapp/CompanySide/HomeSection/home.dart';
import 'package:employeeapp/CompanySide/Plans/plans.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Chats/chats_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kTabPages = [
      HomeView(),
      ServicesView(),
      // ReportsView(),
      // ReportsNavBar(),
      ChatsScreen(),
      SettingsView(),
    ];
    final kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          // activeIcon: Icon(Icons.dashboard),
          icon: Icon(Icons.dashboard),
          label: "Dashboard"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.cleaning_services), label: "Services"),
      const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      // const BottomNavigationBarItem(
      //     icon: Icon(Icons.assistant), label: "Plans"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.miscellaneous_services), label: "Settings"),
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
