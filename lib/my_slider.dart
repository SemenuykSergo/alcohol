import 'package:alcohol_dilution_calculator/theme/const_theme.dart';
import 'package:alcohol_dilution_calculator/count.dart';
import 'package:alcohol_dilution_calculator/method/switch_alcohol_value.dart';
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
  String title;

  MySlider(
      {this.countSlider,
      this.howCount,
      this.stepCount,
      this.minSlide,
      this.maxSlide,
      this.division,
      this.valueName,
      this.title});

  @override
  _MySliderState createState() => _MySliderState(
      countSlider: countSlider,
      howCount: howCount,
      stepCount: stepCount,
      minSlide: minSlide,
      maxSlide: maxSlide,
      division: division,
      valueName: valueName,
      title: title);
}

class _MySliderState extends State<MySlider> {
  double countSlider;
  double howCount;
  double stepCount;
  double minSlide;
  double maxSlide;
  int division;
  String valueName;
  String title;
  double result;

  _MySliderState(
      {this.countSlider,
      this.howCount,
      this.stepCount,
      this.minSlide,
      this.maxSlide,
      this.division,
      this.valueName,
      this.title});
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
      child: Icon(
        Icons.remove,
        color: ConstColor.colorYellow,
        size: 30.0,
      ),
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
      child: Icon(
        Icons.add,
        color: ConstColor.colorYellow,
        size: 30.0,
      ),
    );

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  child: Text('$title'), //! заменить  название
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
                  Container(width: 300, child: sliderChangeWidget),
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
    switchAlcoholValue(howCount, countSlider, valueName);
    howCount = Count.howCountLocal;
    countSlider = Count.countSliderLocal;
  }

  void buttonAdd() {
    countSlider += stepCount;
    if (countSlider > maxSlide) {
      countSlider = maxSlide;
    }
    switchAlcoholValue(howCount, countSlider, valueName);
    howCount = Count.howCountLocal;
    countSlider = Count.countSliderLocal;
  }

  void sliderChange(value) {
    countSlider = value;
    switchAlcoholValue(howCount, countSlider, valueName);
    howCount = Count.howCountLocal;
    countSlider = Count.countSliderLocal;
  }
}
