import 'package:employeeapp/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:employeeapp/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:employeeapp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class EmployeeSalary extends StatelessWidget {
  const EmployeeSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

enum LegendShape { circle, rectangle }

class PieChart3 extends StatefulWidget {
  const PieChart3({Key? key}) : super(key: key);

  @override
  _PieChart3State createState() => _PieChart3State();
}

class _PieChart3State extends State<PieChart3> {
  final dataMap = <String, double>{
    "Take Home": 10,
    "Deductions": 3,
  };
  final colorList = <Color>[
    greenColor.shade600,
    redColor.shade600,
  ];

  ChartType? _chartType = ChartType.disc;
  bool _showCenterText = true;
  double? _ringStrokeWidth = 32;
  double? _chartLegendSpacing = 32;
  bool _showLegendsInRow = false;
  bool _showLegends = true;

  bool _showChartValueBackground = true;
  bool _showChartValues = true;
  bool _showChartValuesInPercentage = true;
  bool _showChartValuesOutside = true;

  bool _showGradientColors = false;

  LegendShape? _legendShape = LegendShape.circle;
  LegendPosition? _legendPosition = LegendPosition.right;

  int key = 0;

  @override
  Widget build(BuildContext context) {
    final chart = PieChart(
      key: ValueKey(key),
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: _chartLegendSpacing!,
      chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
          ? 300
          : MediaQuery.of(context).size.width / 3.2,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      centerText: _showCenterText ? "SALARY" : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
      emptyColor: Colors.grey,
      emptyColorGradient: const [
        Color(0xff6c5ce7),
        Colors.blue,
      ],
    );
    final settings = const SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.all(12),
      ),
    );
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          if (constraints.maxWidth >= 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: chart,
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: settings,
                )
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // width: 310,
                      height: 180,
                      decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Take Home',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 140, 233, 143)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$ 75,8987.00',
                                  style: h18HeadingWhiteBold,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Deduction',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 209, 133, 114)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$ 10,8987.00',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 22),
                                Text('Total salary: \$ 85,8987.00',
                                    style: h13HeadingWhiteBold),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: chart,
                    margin: const EdgeInsets.symmetric(vertical: 50),
                  ),
                  settings,
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Payment Method: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          final snackBar = SnackBar(
                                            content:
                                                const Text('Yay! A SnackBar!'),
                                            action: SnackBarAction(
                                              label: 'Undo',
                                              onPressed: () {
                                                // Some code to undo the change.
                                              },
                                            ),
                                          );

                                          // Find the ScaffoldMessenger in the widget tree
                                          // and use it to show a SnackBar.
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        },
                                        child: Image.asset(
                                            'assets/images/payment1.png')),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Withdraw',
                            style: h14HeadingWhiteBold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
