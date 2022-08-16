// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:naukri/provider/bottom_nav_bar_provider.dart';
import 'package:naukri/provider/card_selector.dart';
import 'package:naukri/provider/check_box_provider.dart';
import 'package:naukri/provider/eye_icon_provider.dart';
import 'package:naukri/provider/login_option_provider.dart';
import 'package:naukri/view/screen/after_login_screen/AHome_screen/ahome_screen.dart';
import 'package:provider/provider.dart';

import 'view/screen/before_login_screen/splashScreen/splashScreen.dart';

void main() async {
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
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (_) => LoginOptionProvider()),
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        ChangeNotifierProvider(create: (_) => EyeIconProvider()),
        ChangeNotifierProvider(create: (_) => CardSelecterProvider()),

        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Naukri .com',
        // theme: ThemeData(),
        // home: StreamBuilder(
        //     stream: FirebaseAuth.instance.authStateChanges(),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.active) {
        //         if (snapshot.hasData) {
        //           return AHomeScreen();
        //         } else if (snapshot.hasError) {
        //           return Center(
        //             child: Text("${snapshot.error}"),
        //           );
        //         } else if (snapshot.connectionState ==
        //             ConnectionState.waiting) {
        //           return Center(
        //             child: CircularProgressIndicator(
        //               color: Colors.blue,
        //             ),
        //           );
        //         }
        //       }
        //       return SplashScreen();
        //     }),
        home: AHomeScreen(),
      ),
    );
  }
}
