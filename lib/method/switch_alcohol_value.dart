import 'package:alcohol_dilution_calculator/count.dart';
import 'package:alcohol_dilution_calculator/text_model.dart';

void switchAlcoholValue(double howCount, double countSlider, String valueName) {
  switch (valueName) {
    case "SlideStartAlchocol":
      Count.slideStartAlchocol = countSlider;
      Count.countSliderLocal = countSlider;
      howCount = Count.slideStartAlchocol;
      Count.howCountLocal = howCount;
      Count.resultGlobal = Count.slideStartAlchocol;
      ModelValue.textModelValue.textRemove();
      break;
    case "SliderAlchocolMain":
      Count.sliderAlchocolMain = countSlider;
      Count.countSliderLocal = countSlider;
      howCount = Count.sliderAlchocolMain;
      Count.howCountLocal = howCount;
      Count.resultGlobal = Count.sliderAlchocolMain;
      ModelValue.textModelValue.textRemove();
      break;
    case "SliderAlchocolEnd":
      Count.sliderAlchocolEnd = countSlider;
      Count.countSliderLocal = countSlider;
      howCount = Count.sliderAlchocolEnd;
      Count.howCountLocal = howCount;
      Count.resultGlobal = Count.sliderAlchocolEnd;
      ModelValue.textModelValue.textRemove();
      break;
  }
}
