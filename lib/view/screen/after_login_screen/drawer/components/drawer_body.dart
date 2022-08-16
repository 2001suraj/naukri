// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/helper/buildListTile.dart';
import 'package:naukri/service/auth_service.dart';
import 'package:naukri/view/screen/search_screen/search_screen.dart';

Column logbuildBody(BuildContext context) {
  return Column(
    children: [

      //search jobs
 BuildListTile(
        fsize: 12,

        icon: Icon(Icons.search),
        title: 'Search jobs',
        subtitle: '',
        tap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchScreen()));

        },
      ),

      //recommended jods
  BuildListTile(
        fsize: 12,

        icon: Icon(Icons.business_center),
        title: 'Recommended jobs ',
        subtitle: '',
        tap: () {},
      ),

      //saved jobs
        BuildListTile(
          fsize:  12,
        icon: Icon(Icons.save),
        title: 'saved jobs ',
        subtitle: '',
        tap: () {},
      ),


      //profile performance
        BuildListTile(
        icon: Icon(Icons.bar_chart),
        title: 'Profile performance ',
        subtitle: '',
        tap: () {},
        fsize: 12,
      ),


      //divider
Divider(),

      //chat for help 
        BuildListTile(
        fsize: 12,

        icon: Icon(Icons.chat),
        title: 'Chat for help  (New) ',
        subtitle: '',
        tap: () {},
      ),

      
      //setting
  BuildListTile(
        fsize: 12,

        icon: Icon(Icons.settings),
        title: 'settings ',
        subtitle: '',
        tap: () {},
      ),

      //jobseekers services
      BuildListTile(
        fsize: 12,

        icon: Icon(Icons.calendar_view_week_rounded),
        title: 'Jobseeker services (Paid) ',
        tap: () {},
        subtitle: '',
      ),


      //online courses
   BuildListTile(
        fsize: 12,

        icon: Icon(Icons.book),
        title: 'Online course',
        subtitle: '',
        tap: () {},
      ),

      // naukri blog 

    BuildListTile(
        fsize: 12,


        icon: Icon(Icons.menu),
        subtitle: '',
        title: 'Naukri blog',
        tap: () {},
      ),

      // how naukri works
 BuildListTile(
        fsize: 12,

        icon: Icon(Icons.help),
        title: 'How Naukri works ',
        subtitle: '',
        tap: () {},
      ),

      // write to us
 BuildListTile(
        fsize: 12,

        icon: Icon(Icons.message),
        subtitle: '',
        title: 'Write to us ',
        tap: () {},
      ),

      // about us

 BuildListTile(
        icon: Icon(Icons.perm_device_information_rounded),
        title: 'About us ',
        subtitle: '',
        tap: () {},
      ),
      // logout
     
     BuildListTile(
        icon: Icon(Icons.logout),
        title: 'Logout  ',
        subtitle: '',
        tap: ()async {
        await   AuthServices().logoutUser();
        },
      ),
      
   
  
     
     
     
    ],
  );
}
