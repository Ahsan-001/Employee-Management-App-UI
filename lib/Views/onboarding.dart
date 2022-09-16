// ignore_for_file: library_private_types_in_public_api

import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/selectRole.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<_OnBoardingPageState>();

  void _onIntroEnd(context) {
    Get.to(
      const SelectRole(),
      duration: const Duration(milliseconds: 300),
      transition: Transition.downToUp,
    );

    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_) => const SelectRole()),
    // );
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.w700, color: kMainColor),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) return kMainColor;
                return kMainColor; // Use the component's default.
              },
            ),
          ),
          child: const Text(
            'GET STARTED!',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Multiple Shifts",
          body:
              "SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far.",
          image: _buildImage('mobile1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Time Keeping",
          body:
              "SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far.",
          image: _buildImage('mobile0.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Mobile First",
          body:
              "SCE International is for everyone. Now is the chance to signup and receive all the lessons that we have prepared for education so far.",
          image: _buildImage('mobile2.png'),
          decoration: pageDecoration,
          // reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: kMainColor, borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 18,
        ),
      ),
      done: Container(
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kMainColor,
        ),
        child: const Center(
          child: Text(
            'GO',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
