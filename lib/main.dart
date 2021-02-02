import 'package:alcohol_dilution_calculator/slider_for_alcohol_proof.dart';
import 'package:alcohol_dilution_calculator/slider_for_alcohol_volume.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Калькулятор разбавления спирта'),
          ),
          body: Container(
              child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: SliderForAlcoholProof(),
                color: Colors.teal[100],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: SliderForAlcoholVolume(),
                color: Colors.teal[300],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text('Widger3'),
                color: Colors.teal[500],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text("Widget 4"),
                color: Colors.teal[700],
              ),
            ],
          ))),
    );
  }
}
