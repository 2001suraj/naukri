
 import 'package:flutter/widgets.dart';

class LoginOptionProvider  extends ChangeNotifier{
  
   String? _loginoption;
   String? get loginoption => _loginoption;
  
  void onchange (value){
    _loginoption = value.toString();
     notifyListeners();

  }
}