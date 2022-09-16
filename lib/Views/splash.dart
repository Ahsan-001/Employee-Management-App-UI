// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:employeeapp/Views/introViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 10),
      () {
        setState(
          () {
            Get.to(
              duration: const Duration(milliseconds: 300),
              transition: Transition.rightToLeft,
              IntroViewsPage(),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/images/vid.gif"),
      ),
    );
  }
}
