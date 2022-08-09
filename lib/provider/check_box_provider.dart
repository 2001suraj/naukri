import 'package:flutter/widgets.dart';

class CheckBoxProvider extends ChangeNotifier{
    bool _ischeck =  false;
    bool get ischeck => _ischeck;
    void onchange(check){
       _ischeck = check;
        notifyListeners() ;
    }

}