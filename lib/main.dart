import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:alcohol_dilution_calculator/theme.dart';
import 'package:alcohol_dilution_calculator/widget/addTextResultWidget.dart';
import 'package:alcohol_dilution_calculator/widget/slideStartAlchocolWidget.dart';
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
              title: Text('TEST'),
            ),
            body: SafeArea(
              //! наблюдаем
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  ScopedModelDescendant<TextModel>(
                      builder: (context, child, model) {
                    return SlideStartAlcoholWidget();
                  }),
                  SizedBox(
                    height: 75,
                  ),
                  ScopedModelDescendant<TextModel>(
                      builder: (context, child, model) {
                    return SliderAlchocolMainWidget();
                  }),
                  SizedBox(
                    height: 75,
                  ),
                  ScopedModelDescendant<TextModel>(
                      builder: (context, child, model) {
                    return AddTextResultWidget();
                  }),
                ],
              ),
            )),
      ),
    );
  }
}
