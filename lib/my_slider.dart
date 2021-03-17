import 'package:alcohol_dilution_calculator/count.dart';

import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySlider extends StatefulWidget {
  double countSlider;
  double howCount;
  double stepCount;
  double minSlide;
  double maxSlide;
  int division;
  String valueName;

  MySlider(
      {this.countSlider,
      this.howCount,
      this.stepCount,
      this.minSlide,
      this.maxSlide,
      this.division,
      this.valueName});

  @override
  _MySliderState createState() => _MySliderState(
      countSlider: countSlider,
      howCount: howCount,
      stepCount: stepCount,
      minSlide: minSlide,
      maxSlide: maxSlide,
      division: division,
      valueName: valueName);
}

class _MySliderState extends State<MySlider> {
  double countSlider;
  double howCount;
  double stepCount;
  double minSlide;
  double maxSlide;
  int division;
  String valueName;
  double result;

  _MySliderState(
      {this.countSlider,
      this.howCount,
      this.stepCount,
      this.minSlide,
      this.maxSlide,
      this.division,
      this.valueName});
  @override
  Widget build(BuildContext context) {
    Count().resultGlobalMethod(valueName);
    result = Count.resultGlobal;

    Widget buttonAddWidget = FloatingActionButton(
      onPressed: () {
        setState(() {
          buttonRemove();
        });
      },
      child: Icon(Icons.remove),
    );

    Widget sliderChangeWidget = Slider(
      value: howCount,
      min: minSlide,
      max: maxSlide,
      divisions: division,
      onChanged: (double value) {
        setState(() {
          sliderChange(value);
        });
      },
    );
    Widget buttonRemoveWidget = FloatingActionButton(
      onPressed: () {
        setState(() {
          buttonAdd();
        });
      },
      child: Icon(Icons.add),
    );

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  child: Text(
                    '${(result * 100).round() / 100}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  buttonAddWidget,
                  sliderChangeWidget,
                  buttonRemoveWidget,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void buttonRemove() {
    countSlider -= stepCount;
    if (countSlider < minSlide) {
      countSlider = minSlide;
    }

    switch (valueName) {
      case "SlideStartAlchocol":
        Count.slideStartAlchocol = countSlider;
        howCount = Count.slideStartAlchocol;
        result = Count.slideStartAlchocol;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolMain":
        Count.sliderAlchocolMain = countSlider;
        howCount = Count.sliderAlchocolMain;
        result = Count.sliderAlchocolMain;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolEnd":
        Count.sliderAlchocolEnd = countSlider;
        howCount = Count.sliderAlchocolEnd;
        result = Count.sliderAlchocolEnd;
        ModelValue.textModelValue.textRemove();
        break;
    }
  }

  void buttonAdd() {
    countSlider += stepCount;
    if (countSlider > maxSlide) {
      countSlider = maxSlide;
    }
    switch (valueName) {
      case "SlideStartAlchocol":
        Count.slideStartAlchocol = countSlider;
        howCount = Count.slideStartAlchocol;
        result = Count.slideStartAlchocol;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolMain":
        Count.sliderAlchocolMain = countSlider;
        howCount = Count.sliderAlchocolMain;
        result = Count.sliderAlchocolMain;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolEnd":
        Count.sliderAlchocolEnd = countSlider;
        howCount = Count.sliderAlchocolEnd;
        result = Count.sliderAlchocolEnd;
        ModelValue.textModelValue.textRemove();
        break;
    }
  }

  void sliderChange(value) {
    countSlider = value;

    switch (valueName) {
      case "SlideStartAlchocol":
        Count.slideStartAlchocol = countSlider;
        howCount = Count.slideStartAlchocol;
        result = Count.slideStartAlchocol;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolMain":
        Count.sliderAlchocolMain = countSlider;
        howCount = Count.sliderAlchocolMain;
        result = Count.sliderAlchocolMain;
        ModelValue.textModelValue.textRemove();
        break;
      case "SliderAlchocolEnd":
        Count.sliderAlchocolEnd = countSlider;
        howCount = Count.sliderAlchocolEnd;
        result = Count.sliderAlchocolEnd;
        ModelValue.textModelValue.textRemove();
        break;
    }
  }
}
