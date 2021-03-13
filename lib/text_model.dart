import 'package:scoped_model/scoped_model.dart';

class TextModel extends Model {
  bool _flagText = false;

  bool get flagText => _flagText;

  void textRemove() {
    _flagText = !_flagText;

    notifyListeners();
  }
}

class ModelValue {
  static var textModelValue = new TextModel();
}
