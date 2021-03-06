import 'package:alcohol_dilution_calculator/my_slider.dart';
import 'package:flutter/material.dart';

class SliderAlchocolEndWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 25),
      height: 150,
      child: MySlider(
        countSlider: 45,
        howCount: 45,
        stepCount: 0.1,
        minSlide: 20,
        maxSlide: 70,
        division: 20,
        valueName: "SliderAlchocolEnd",
        title: "Конечная крепость, %",
      ),
    );
  }
}
