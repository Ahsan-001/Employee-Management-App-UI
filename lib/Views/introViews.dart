import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Views/selectRole.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

///  this class uses this library : intro_views_flutter
///  the link to it : https://pub.dev/packages/intro_views_flutter#-installing-tab-

class IntroViewsPage extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        bubble: Image.asset('assets/images/mobile1.png'),
        body: const Text(
          'SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far.',
        ),
        title: const Text(
          'Multiple Shifts',
        ),
        titleTextStyle: h30HeadingWhiteBold,
        bodyTextStyle: h16HeadingWhiteSimple,
        mainImage: Image.asset(
          'assets/images/mobile1.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/images/mobile0.png',
      body: const Text(
        'SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far',
      ),
      title: const Text('Time Keeping'),
      mainImage: Image.asset(
        'assets/images/mobile0.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: h30HeadingWhiteBold,
      bodyTextStyle: h16HeadingWhiteSimple,
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/images/mobile2.png',
      body: const Text(
        'SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far',
      ),
      title: const Text('Mobile First'),
      mainImage: Image.asset(
        'assets/images/mobile2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: h30HeadingWhiteBold,
      bodyTextStyle: h16HeadingWhiteSimple,
    ),
  ];

  IntroViewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SCE International',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ), //ThemeData
      home: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        child: Builder(
          builder: (context) => IntroViewsFlutter(
            pages,
            showNextButton: true,
            showBackButton: true,
            onTapDoneButton: () {
              Get.to(
                const SelectRole(),
                duration: const Duration(milliseconds: 300),
                transition: Transition.downToUp,
              );
            },
            pageButtonTextStyles: h18HeadingWhiteBold,
          ), //IntroViewsFlutter
        ),
      ), //Builder
    ); //Material App
  }
}
