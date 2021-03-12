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
  double result = 10; //! значение должно быть середина слайдера.

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
  double result = 10;

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
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buttonAddWidget,
      sliderChangeWidget,
      buttonRemoveWidget,
      SizedBox(width: 25),
      Text('${(result * 100).round() / 100}'), //!  тект выше слайдера перенести
    ]));
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
    countSlider += countSlider;
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
