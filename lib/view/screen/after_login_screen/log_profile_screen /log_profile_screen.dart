// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_container_top_button.dart';
import 'package:naukri/helper/top_row_button.dart';
import 'package:naukri/view/screen/after_login_screen/drawer/drawer_screen.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/basic_details_container.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/build_missing_details_container.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/first_container.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/details.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/profile_summary.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/upload_resume_container.dart';
import 'package:naukri/view/screen/after_login_screen/log_profile_screen%20/components/video_profile_container.dart';

class LogProfileScreen extends StatelessWidget {
  const LogProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
      ),
      drawer: LogDrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //topContainer
              // top cirlce and username and edit button
              firstContainer(),

              //builder container with missing details

              buildMissingdetails(),

              // Basic Details container
              basicDetailsContainer(),

              // upload resume

              uploadResumeContainer(context),

              //video profile

              videoProfileContainer(),
              //profile summary
              profileSummary(),

              //professional detials
              Details(
                container: FittedBox(
                  child: topRowbutton(
                      title: 'Professional details',
                      tap: () {},
                      booll: true,
                      boost: 12,
                      buttontitle: 'Add'),
                ),
                container1: buttonRowdetails(ftext: 'Current industry', stext:'current department'),
              ),
              //key sill
              Details(
                container: topRowbutton(
                    title: 'Key skills',
                    tap: () {},
                    booll: true,
                    boost: 8,
                    buttontitle: 'Add'),
                container1: Text(
                  'Get discovered for skills and expertise you own',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),

              // employment details
              Details(
                container: FittedBox(
                  child: topRowbutton(
                      title: 'Employment details',
                      tap: () {},
                      booll: true,
                      boost: 18,
                      buttontitle: 'Add'),
                ),
                container1: Text(
                  'Your employment details will help us match your profile to suitable jobs',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),

              //projects
              Details(
                container: topRowbutton(
                    title: 'Projects',
                    tap: () {},
                    booll: true,
                    boost: 8,
                    buttontitle: 'Add'),
                container1: Text(
                  'Showcase your best project that you have worked on in your carrer',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),

              //it skills
              Details(
                container: topRowbutton(
                    title: 'IT skills',
                    tap: () {},
                    booll: true,
                    boost: 8,
                    buttontitle: 'Add'),
                container1: Text(
                  'Tell recruiters about the tools and software you know ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),

              //education
              Details(
                conheight: true,
                height: 200.0,
                container: topRowbutton(
                    title: 'Education', tap: () {}, buttontitle: 'Add'),
                container1: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'B.Sc Computers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                        title: Text(
                          'Malhar Degree College, Hyderabad',
                        ),
                        subtitle: Text('2020, Full Time')),
                  ],
                ),
              ),

              //accomplishments
              Details(
                    conheight: true,
height: 300.0,
                container: topRowbutton(
                    title: 'Accomplishment',
                    tap: () {},
                    booll: true,
                    boost: 8,
                     
                    buttontitle: 'Add'),
                container1: Column(
                  children: [
                 buttonRowdetails(ftext: 'Gender', stext:'Sexual orientation'),
                 buttonRowdetails(ftext: 'More info', stext:'Category'),
                 buttonRowdetails(ftext: 'Differently abled', stext:'Career break'),
                 buttonRowdetails(ftext: 'Work permit', stext:'Address'),




                  ],
                ),
              ),

              // personal details
              Details(
                container: topRowbutton(
                    title: 'Personal details',
                    tap: () {},
                    booll: true,
                    boost: 2,
                    buttontitle: 'Add'),
                container1: Column(
                  children: [],
                ),
              ),

              //language
              Details(
                container: topRowbutton(
                    title: 'Languages',
                    tap: () {},
                    booll: true,
                    boost: 2,
                    buttontitle: 'Add'),
                container1: Text(
                  'Mention langauage in which you can read, write and speak ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),

              //add carrer preference
              Details(
                container: topRowbutton(
                    title: 'IT skills',
                    tap: () {},
                    booll: true,
                    boost: 8,
                    buttontitle: 'Add'),
                container1: Text(
                  'Tell recruiters about the tools and software you know ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Row buttonRowdetails({ required ftext,required stext}) {
    return Row(
                children: [
                     MaterialButton(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color:Colors.blueGrey,),),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(ftext,style: TextStyle(fontSize:  10),),
                          Icon(Icons.arrow_forward_ios_rounded,size: 15, color:Colors.blueGrey),
                        ],
                      ),
                    ),
                  
                  SizedBox(width: 10,),
                     MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color:Colors.blueGrey,),),
                       onPressed: () {},
                       child: Row(
                         children: [
                           Text(stext,style: TextStyle(fontSize:  10),),
                           Icon(Icons.arrow_forward_ios_rounded,size: 15),
                         ],
                       ),
                     ),
                ],
              );
  }
}
