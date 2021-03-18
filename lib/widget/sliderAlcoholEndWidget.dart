import 'package:alcohol_dilution_calculator/my_slider.dart';
import 'package:flutter/material.dart';

class SliderAlchocolEndWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 25),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1.0, color: Color.fromRGBO(112, 112, 112, 1)),
        color: Color.fromRGBO(207, 207, 207, 1),
        //gradient: LinearGradient(
        // begin: Alignment.topCenter,
        // end: Alignment.bottomCenter,
        //  colors: [Color(0xff9ca79b), Color(0xff1a1e19)],
        // ),
      ),
      child: MySlider(
        countSlider: 25,
        howCount: 25,
        stepCount: 0.1,
        minSlide: 20,
        maxSlide: 30,
        division: 10,
        valueName: "SliderAlchocolEnd",
      ),
    );
  }
}
