import 'package:alcohol_dilution_calculator/theme/const_theme.dart';
import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:alcohol_dilution_calculator/theme/theme.dart';
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
              centerTitle: true,
              title: Text('Калькулятор разбавления спирта'),
            ),
            body: SafeArea(
              //! наблюдаем
              child: Container(
                decoration: BoxDecoration(
                  color: ConstColor.colorBlackAppBar,
                ), //),
                child: Column(
                  children: [
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SlideStartAlcoholWidget();
                    }),
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SliderAlchocolMainWidget();
                    }),
                    ScopedModelDescendant<TextModel>(
                        builder: (context, child, model) {
                      return SliderAlchocolEndWidget();
                    }),
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
