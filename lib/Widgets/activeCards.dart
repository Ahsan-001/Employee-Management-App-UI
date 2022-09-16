import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class ActiveCards extends StatelessWidget {
  const ActiveCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 215,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBrightColor,
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.black12,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: kPrimaryColor,
                    backgroundImage:
                        const AssetImage("assets/images/iconuser.png"),
                    // child: Image.asset(
                    //   "assets/images/iconuser.png",
                    //   height: 30,
                    // ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "James Steve",
                        style: h17HeadingBlackBold,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: yellowColor,
                          ),
                          Text(
                            "4.7",
                            style: h12HeadingBlackBold,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor.shade50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$20/hr",
                            style:
                                h20HeadingBlackBold.copyWith(color: redColor),
                          ),
                          const Text(
                            "In Progress",
                            style: h14HeadingBlackBold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Gardening",
                  style: h15HeadingBlackBold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.location_on,
                  ),
                  Expanded(
                    child: Text(
                        "Sirte District, Sirte District, Libya Sirte district, Libya"),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Date",
                    style:
                        h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
                  ),
                  Text(
                    "Time",
                    style:
                        h13HeadingBlackSimple.copyWith(color: kDarkLightColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("15 May 2022, Sunday", style: h13HeadingBlackBold),
                  Text("8:00 AM - 5:00 PM", style: h13HeadingBlackBold),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
