import 'package:flutter/widgets.dart';

class EyeIconProvider extends ChangeNotifier {
 bool _ischeck = false ;
    bool get ischeck => _ischeck;
    void onchange(){
       _ischeck = !_ischeck;
        notifyListeners() ;
    }
}
