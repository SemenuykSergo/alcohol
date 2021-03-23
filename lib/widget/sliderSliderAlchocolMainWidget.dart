import 'package:alcohol_dilution_calculator/my_slider.dart';
import 'package:flutter/material.dart';

class SliderAlchocolMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 25),
      height: 150,
      child: MySlider(
        countSlider: 550.0,
        howCount: 550.0,
        stepCount: 0.1,
        minSlide: 50.0,
        maxSlide: 1000.0,
        division: 9,
        valueName: "SliderAlchocolMain",
        title: "Начальный объём спирта, мл",
      ),
    );
  }
}
