import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:naukri/provider/bottom_nav_bar_provider.dart';
import 'package:naukri/provider/check_box_provider.dart';
import 'package:naukri/provider/eye_icon_provider.dart';
import 'package:naukri/provider/login_option_provider.dart';
import 'package:provider/provider.dart';

import 'view/screen/before_login_screen/splashScreen/splashScreen.dart';

 void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

   runApp(MyApp());
 }
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
        ChangeNotifierProvider(create: (_)=>BottomNavBarProvider()),
         ChangeNotifierProvider(create: (_)=>LoginOptionProvider()),
         ChangeNotifierProvider(create: (_)=>CheckBoxProvider()),
         ChangeNotifierProvider(create: (_)=>EyeIconProvider()),

         

         


         
       ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
    title: 'Naukri .com',
    theme:ThemeData(),
    home:SplashScreen(),
      ),
    );
    
  }
}