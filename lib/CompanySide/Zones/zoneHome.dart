import 'package:employeeapp/CompanySide/Zones/companyZones/barcelona.dart';
import 'package:employeeapp/CompanySide/Zones/companyZones/madurez.dart';
import 'package:employeeapp/CompanySide/Zones/companyZones/maracaibo.dart';
import 'package:employeeapp/CompanySide/Zones/createZone.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Widgets/zonesCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZonesView extends StatelessWidget {
  const ZonesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: const Text("The Zones"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                const CreateZoneView(),
                transition: Transition.downToUp,
                duration: const Duration(milliseconds: 400),
              );
            },
            icon: Icon(
              Icons.create_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Maracaibo",
                img: "assets/images/maracaibo.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const BarcelonaView(),
                ),
                heading: "Barcelona",
                img: "assets/images/barcelona.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MadurezView(),
                ),
                heading: "Madurez",
                img: "assets/images/Madurez.png",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Los Andes",
                img: "assets/images/Los Andes.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Valencia",
                img: "assets/images/Valencia.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Caracas",
                img: "assets/images/Caracas.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Templo De Caracas",
                img: "assets/images/Templo De Caracas.jpg",
              ),
              ZonesCard(
                ontap: () => Get.to(
                  const MaracaiboView(),
                ),
                heading: "Compras Venezuela",
                img: "assets/images/Compras Venezuela.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
