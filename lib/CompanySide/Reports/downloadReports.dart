import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class DownloadedReports extends StatelessWidget {
  const DownloadedReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("Download Reports"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outlined,
              color: kBrightColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            ListTile(
              tileColor: kBrightColor,
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text("All employee detail report"),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.punch_clock_outlined,
                        size: 15,
                      ),
                      Text(
                        "02-Sep-2022 11:03:59 PM",
                        style: h11HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 15,
                      ),
                      Text(
                        "02-Sep-2022 11:03:59 PM",
                        style: h11HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(
                children: const [
                  Icon(
                    Icons.cloud_download,
                  ),
                  Icon(Icons.delete)
                ],
              ),
            ),
            ListTile(
              tileColor: kBrightColor,
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text("All employee detail report"),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.punch_clock_outlined,
                        size: 15,
                      ),
                      Text(
                        "02-Sep-2022 11:03:59 PM",
                        style: h11HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 15,
                      ),
                      Text(
                        "02-Sep-2022 11:03:59 PM",
                        style: h11HeadingBlackSimple.copyWith(
                            color: kDarkLightColor),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(
                children: const [
                  Icon(
                    Icons.cloud_download,
                  ),
                  Icon(Icons.delete)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
