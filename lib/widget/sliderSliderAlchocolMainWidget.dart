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
        countSlider: 15,
        howCount: 15,
        stepCount: 0.1,
        minSlide: 10,
        maxSlide: 20,
        division: 10,
        valueName: "SliderAlchocolMain",
      ),
    );
  }
}
