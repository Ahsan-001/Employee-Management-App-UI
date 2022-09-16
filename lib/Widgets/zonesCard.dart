import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class ZonesCard extends StatelessWidget {
  final String? heading;
  final String? img;
  final VoidCallback? ontap;
  const ZonesCard({
    Key? key,
    this.heading,
    this.img,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // height: 260,
        decoration: const BoxDecoration(
          color: kBrightColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 2,
              color: Colors.black12,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading!,
                style: h20HeadingBlackBold,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                img!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
