import 'package:aaron_1/shared/menu_bottom.dart';
import 'package:aaron_1/shared/menu_drawer.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  final double fontSize = 18;
  String result = '';
  bool isMetric = true;
  bool isBelugial = false;
  double? height;
  double? weight;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isMetric, isBelugial];
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bmi TOD')),
      bottomNavigationBar: MenuBotton(),
      drawer: MenuDrawer(),
      body: Column(children: [
        ToggleButtons(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16),
              child: Text('Metric', style: TextStyle(fontSize: fontSize)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16),
              child: Text('Belugial', style: TextStyle(fontSize: fontSize)),
            ),
          ],
          isSelected: isSelected,
          onPressed: (value) {
          if (value == 0) {
            isMetric == true;
            isBelugial == false;
          }else {
            isMetric == false;
            isBelugial == true;
          }
          setState(() {
            isSelected= [isMetric,isBelugial];
          });
          }),
      ]),
      );
  }
}