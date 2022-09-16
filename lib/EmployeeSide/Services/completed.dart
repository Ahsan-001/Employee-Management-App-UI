import 'package:employeeapp/Widgets/activeCards.dart';
import 'package:flutter/material.dart';

class Completedview extends StatelessWidget {
  const Completedview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: const [
              ActiveCards(),
              ActiveCards(),
              ActiveCards(),
              ActiveCards(),
            ],
          ),
        ),
      ),
    );
  }
}
