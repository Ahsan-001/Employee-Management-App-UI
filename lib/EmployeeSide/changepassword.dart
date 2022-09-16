import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class ForwardPassword extends StatefulWidget {
  const ForwardPassword({Key? key}) : super(key: key);

  @override
  _ForwardPasswordState createState() => _ForwardPasswordState();
}

class _ForwardPasswordState extends State<ForwardPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        title: const Text('Reset Password'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70.0),
              const Text(
                'CHANGE PASSWORD',
                style: h20HeadingBlackBold,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock,
                            color: kDarkColor.withOpacity(0.4)),
                        contentPadding: const EdgeInsets.only(left: 10.0),
                        hintText: 'New password'.toUpperCase(),
                        hintStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock,
                            color: kDarkLightColor.withOpacity(0.4)),
                        contentPadding: const EdgeInsets.only(left: 10.0),
                        hintText: 'confirm password'.toUpperCase(),
                        hintStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 * 3.5),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: kMainColor,
                    ),
                    child: const Text(
                      'Reset Password',
                      style: h13HeadingWhiteBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
