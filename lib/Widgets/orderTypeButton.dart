import 'package:employeeapp/Controllers/radiobutton.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderTypeButton extends StatelessWidget {
  final String value;
  final String title;

  const OrderTypeButton({
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GetBuilder<ButtonController>(
        builder: (buttonController) {
          return InkWell(
            onTap: () => buttonController.setOrderType(value),
            child: Row(
              children: [
                Radio(
                  value: value,
                  groupValue: buttonController.orderType,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (String? value) {
                    //buttonController.setOrderType(value!);
                  },
                  activeColor: kMainColor,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                ),
                const SizedBox(width: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
