import 'package:alcohol_dilution_calculator/my_slider.dart';
import 'package:flutter/material.dart';

class SlideStartAlcoholWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MySlider(
        countSlider: 5,
        howCount: 5,
        stepCount: 0.1,
        minSlide: 0,
        maxSlide: 10,
        division: 10,
        valueName: "SlideStartAlchocol",
      ),
    );
  }
}
