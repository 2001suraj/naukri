import 'package:flutter/widgets.dart';

class CardSelecterProvider extends ChangeNotifier {
  bool _clicked = true;
  bool _clicked1 = true;
  bool _clicked2 = true;
  bool _clicked3 = true;

  bool get clicked => _clicked;
  bool get clicked1 => _clicked1;
  bool get clicked2 => _clicked2;
  bool get clicked3 => _clicked3;

  onchange() {
    _clicked = !_clicked;
    
  
    
    notifyListeners();
  }

  onchange1() {
    _clicked1 = !_clicked1;

    notifyListeners();
  }

  onchange2() {
    _clicked2 = !_clicked2;
    notifyListeners();
  }

  onchange3() {
    _clicked3 = !_clicked3;
    notifyListeners();
  }
}
