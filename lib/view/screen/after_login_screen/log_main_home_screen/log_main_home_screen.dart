// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/view/screen/after_login_screen/drawer/drawer_screen.dart';
import 'package:naukri/view/screen/after_login_screen/log_main_home_screen/components/log_second_top_container.dart';
import 'package:naukri/view/screen/after_login_screen/log_main_home_screen/components/log_top_container.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/fourthContainer.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/thirdContainer.dart';
import 'package:naukri/view/screen/search_screen/search_screen.dart';

class LogMainHomeScreen extends StatelessWidget {
  const LogMainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 252, 247, 247),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 238, 173, 31),
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
          },
          child: Container(
             height: 30,
              width: MediaQuery.of(context).size.width *0.65,
            decoration: BoxDecoration(
               color: Colors.white,
             

              borderRadius: BorderRadius.circular(30),),
              child:Row(children: [
  SizedBox(width: 12),

 Icon(Icons.search),
  SizedBox(width: 12),
 Text('Search jobs here ...',style:TextStyle(color:Colors.black))
              ],)
               
            ),
          ),
        ),
      
      drawer: LogDrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // top container  [complete profile and missout out]
              logbuildTopContainer(context),
              SizedBox(
                height: 9,
              ),
              // second  top container
              logbuildSecondTopContainer(),
              SizedBox(
                height: 9,
              ),

              // third container from view screen before /login_screen /home_screen/components/thirdContainer.dart

              buildThirdContainer(),

              //Inverview advice box

              Container(
                height: 150,
                width: double.infinity,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),

                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:  Border.all(color: Colors.cyanAccent),
                    borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 95, 226, 243).withOpacity(0.19),

                  ),
                   child:Column(children: [
                    Text(" Help millions in preparing better for their interview", maxLines: 2, style:TextStyle(fontWeight:  FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 12),
                    Row(
                      children: [
                        Text(" Write  interview advice ", style:TextStyle(fontWeight:  FontWeight.bold, fontSize: 12,color:Colors.deepPurple,),),
                        Icon(Icons.arrow_forward,color:Colors.deepPurple)
                      ],
                    ),

                   ],)
                ),
              ),

              // fourth container from view screen before /login_screen /home_screen/components/thirdContainer.dart

              buildfouthContainer()
            ],
          ),
        ),
      ),
    );
  }
}
