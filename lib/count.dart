class Count {
  static var slideStartAlchocol = 5.0;
  static var sliderAlchocolMain = 15.0;
  static var sliderAlchocolEnd = 25.0;

  //! начальные значения этих переменных должны быть серединой слайдера

  static var resultGlobal;

  resultGlobalMethod(String valueName) {
    switch (valueName) {
      case "SlideStartAlchocol":
        resultGlobal = slideStartAlchocol;
        break;
      case "SliderAlchocolMain":
        resultGlobal = sliderAlchocolMain;
        break;
      case "SliderAlchocolEnd":
        resultGlobal = sliderAlchocolEnd;
        break;
    }
  }

  static var howCountLocal;
  static var countSliderLocal;
}
