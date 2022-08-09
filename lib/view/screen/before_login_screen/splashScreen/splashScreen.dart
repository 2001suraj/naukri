import 'package:flutter/material.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/homeScreen.dart';
 class SplashScreen extends StatefulWidget {



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
      @override
void initState() {
  super.initState();
  _navigatedToHomeScreen();
  
}
_navigatedToHomeScreen()async{
  Future.delayed(Duration(seconds:2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  });
}
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Center(child: Image(image:AssetImage('assets/images/naukri.png'))),
       SizedBox(height:60),
       Text("Infoedge",style:TextStyle(color:Colors.black87,fontSize: 20, fontWeight:FontWeight.bold))
      ],),
    );
    
  }
}