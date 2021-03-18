import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:alcohol_dilution_calculator/theme.dart';
import 'package:alcohol_dilution_calculator/widget/addTextResultWidget.dart';
import 'package:alcohol_dilution_calculator/widget/slideStartAlchocolWidget.dart';
import 'package:alcohol_dilution_calculator/widget/sliderAlcoholEndWidget.dart';
import 'package:alcohol_dilution_calculator/widget/sliderSliderAlchocolMainWidget.dart';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ModelValue.textModelValue,
      child: MaterialApp(
        theme: basicTheme(),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Калькулятор разбавления спирта'),
            ),
            body: SafeArea(
              //! наблюдаем
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  //gradient: LinearGradient(
                  //begin: Alignment.topCenter,
                  //end: Alignment.bottomCenter,
                  //colors: [Color(0xffb58a8a), Color(0xff563434)],
                ), //),
                child: Column(
                  children: [
                    /* SizedBox(
                      height: 25,
                    ), */
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SlideStartAlcoholWidget();
                    }),
                    /* SizedBox(
                      height: 25,
                    ), */
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SliderAlchocolMainWidget();
                    }),
                    /* SizedBox(
                      height: 25,
                    ), */
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SliderAlchocolEndWidget();
                    }),
                    /* SizedBox(
                      height: 25,
                    ), */
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return AddTextResultWidget();
                    }),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
