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
                  width: 475,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff9ca79b), Color(0xff1a1e19)],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '$_result',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )),
      ]),
    );
  }
}
