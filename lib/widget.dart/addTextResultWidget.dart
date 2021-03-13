import 'package:alcohol_dilution_calculator/count.dart';
import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// ignore: must_be_immutable
class AddTextResultWidget extends StatelessWidget {
  double _result =
      ((Count.slideStartAlchocol + Count.sliderAlchocolMain) * 100).round() /
          100;

  // var _textModel = TextModel();
  //! здесь, скорее нужно исправить, как в предыдущих классах, а вообще обращаться напрямую,как в MyApp.

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ModelValue.textModelValue,
      child: Column(children: [
        new ScopedModelDescendant<TextModel>(
            builder: (context, child, model) => new Text('$_result')),
      ]),
    );
  }
}
