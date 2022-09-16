import 'package:employeeapp/Models/Chat.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:employeeapp/Views/Messages/message_screen.dart';
import 'package:employeeapp/Widgets/filled_outline_button.dart';
import 'package:flutter/material.dart';
import '../../../Utils/const.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container(
        //   padding: const EdgeInsets.fromLTRB(
        //       kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
        //   color: kMainColor,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       FillOutlineButton(press: () {}, text: "Recent Message"),
        //       const SizedBox(width: kDefaultPadding),
        //       FillOutlineButton(
        //         press: () {},
        //         text: "Active",
        //         isFilled: false,
        //       ),
        //     ],
        //   ),
        // ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
