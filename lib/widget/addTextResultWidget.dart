import 'package:alcohol_dilution_calculator/count.dart';
import 'package:alcohol_dilution_calculator/text_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// ignore: must_be_immutable
class AddTextResultWidget extends StatelessWidget {
  double _result = ((Count.slideStartAlchocol +
                  Count.sliderAlchocolMain +
                  Count.sliderAlchocolEnd) *
              100)
          .round() /
      100;

  //! изменить формулу

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ModelValue.textModelValue,
      child: Column(children: [
        new ScopedModelDescendant<TextModel>(
            builder: (context, child, model) => Container(
                  margin: EdgeInsets.all(10),
                  width: 460,
                  height: 150,
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text('Итог'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            '$_result',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ]),
    );
  }
}
