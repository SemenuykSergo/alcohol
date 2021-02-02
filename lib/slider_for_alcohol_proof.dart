import 'package:flutter/material.dart';

class SliderForAlcoholProof extends StatefulWidget {
  @override
  _SliderForAlcoholProofState createState() => _SliderForAlcoholProofState();
}

class _SliderForAlcoholProofState extends State<SliderForAlcoholProof> {
  double _sliderValue = 70;

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        Slider(
          value: _sliderValue,
          min: 40,
          max: 100,
          divisions: 12,
          label: _sliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
        Text('$_sliderValue'),
      ],
    );
  }
}
