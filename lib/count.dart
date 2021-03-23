class Count {
  static var slideStartAlchocol = 70.0;
  static var sliderAlchocolMain = 550.0;
  static var sliderAlchocolEnd = 45.0;

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
