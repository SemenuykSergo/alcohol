import 'package:alcohol_dilution_calculator/my_slider.dart';
import 'package:flutter/material.dart';

class SlideStartAlcoholWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 25),
      height: 150,
      child: MySlider(
        countSlider: 70,
        howCount: 70,
        stepCount: 0.1,
        minSlide: 45,
        maxSlide: 97,
        division: 20,
        valueName: "SlideStartAlchocol",
        title: "Начальная крепость спирта, %",
      ),
    );
  }
}
