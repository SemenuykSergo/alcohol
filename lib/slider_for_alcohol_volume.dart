import 'package:flutter/material.dart';

class SliderForAlcoholVolume extends StatefulWidget {
  @override
  _SliderForAlcoholVolumeState createState() => _SliderForAlcoholVolumeState();
}

class _SliderForAlcoholVolumeState extends State<SliderForAlcoholVolume> {
  double _sliderValue = 0.5;

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
          min: 0.1,
          max: 1,
          divisions: 18,
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
