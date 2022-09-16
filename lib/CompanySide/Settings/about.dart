import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class AboutOrganization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("About Organization"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.headphones,
              color: kBrightColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[_buildInfo1(), _buildInfo2(), _buildInfo3()],
        ),
      ),
    );
  }

  Widget _buildInfo1() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.redAccent,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'SCE INTERNATIONAL',
                        style: h16HeadingBlackBold,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Version"),
                    subtitle: Text("1.0"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.cached),
                    title: Text("Changelog"),
                  ),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.offline_pin), title: Text("License")),
                ],
              )),
        ));
  }

  Widget _buildInfo2() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Author',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("James & Bolt"),
                    subtitle: Text("Spain"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.file_download),
                    title: Text("Download From Cloud"),
                  ),
                ],
              )),
        ));
  }

  Widget _buildInfo3() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Company',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text("SCE International"),
                    subtitle: Text("Employee Management Systems"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Spain , Madrid"),
                  ),
                ],
              )),
        ));
  }
}
