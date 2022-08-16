// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:naukri/view/screen/after_login_screen/log_applies_screen/log_applies_screen.dart';
import 'package:naukri/view/screen/after_login_screen/log_inbox_screen%20/log_inbox_screen%20.dart';
import 'package:naukri/view/screen/after_login_screen/log_main_home_screen/log_main_home_screen.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/log_profile_screen.dart';
import 'package:naukri/view/screen/before_login_screen/InboxScreen/index_screen.dart';
import 'package:naukri/view/screen/before_login_screen/applies_Screen/appliesScreen.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/mainHomeScreen.dart';
import 'package:naukri/view/screen/before_login_screen/profileScreen/profileScreen.dart';

class BottomNavBarProvider extends ChangeNotifier {
  var _currentScreen = 0;
  get currentScreen => _currentScreen;
  List<Widget> screen = [
    MainHomeScreen(),
    AppliesScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
  List<Widget> screen1 = [
    LogMainHomeScreen(),
    LogAppliesScreen(),
    LogInboxScreen(),
    LogProfileScreen(),
  ];

  void changeScreen(index) {
    _currentScreen = index;
    notifyListeners();
  }
}
