import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

class FAQsView extends StatefulWidget {
  const FAQsView({Key? key}) : super(key: key);

  @override
  State<FAQsView> createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
  late ExpandedTileController _controller1;
  late ExpandedTileController _controller2;
  late ExpandedTileController _controller3;
  late ExpandedTileController _controller4;
  late ExpandedTileController _controller5;
  late ExpandedTileController _controller6;

  @override
  void initState() {
    // initialize controller
    _controller1 = ExpandedTileController(isExpanded: false);
    _controller2 = ExpandedTileController(isExpanded: false);
    _controller3 = ExpandedTileController(isExpanded: false);
    _controller4 = ExpandedTileController(isExpanded: false);
    _controller5 = ExpandedTileController(isExpanded: false);
    _controller6 = ExpandedTileController(isExpanded: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        // automaticallyImplyLeading: false,
        title: const Text("FAQs"),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Center(
            child: Column(
              children: [
                FAQsCard(
                  title: "Is my data safe on SCE?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller1,
                ),
                FAQsCard(
                  title: "How to add employees in SCE?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller2,
                ),
                FAQsCard(
                  title: "How to create Day Fixed Work Timing?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller3,
                ),
                FAQsCard(
                  title: "How to see employee attendance?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller4,
                ),
                FAQsCard(
                  title: "May I download Invoice?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller5,
                ),
                FAQsCard(
                  title: "How to add employee?",
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  controller: _controller6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FAQsCard extends StatelessWidget {
  final String title;
  final String content;
  const FAQsCard({
    Key? key,
    required this.content,
    required this.title,
    required ExpandedTileController controller,
  })  : _controller = controller,
        super(key: key);

  final ExpandedTileController _controller;

  @override
  Widget build(BuildContext context) {
    return ExpandedTile(
      theme: const ExpandedTileThemeData(
        headerColor: kBrightColor,
        headerRadius: 10.0,
        headerPadding: EdgeInsets.all(10.0),
        headerSplashColor: kBrightColor,
        contentBackgroundColor: kBrightColor,
        contentPadding: EdgeInsets.all(10.0),
        contentRadius: 12.0,
      ),
      controller: _controller,
      title: Text(
        title,
        style: h16HeadingBlackBold,
      ),
      content: Container(
        color: kBrightColor,
        child: Center(
          child: Text(content),
        ),
      ),
      onTap: () {
        debugPrint("tapped!!");
      },
      onLongTap: () {
        debugPrint("long tapped!!");
      },
    );
  }
}
