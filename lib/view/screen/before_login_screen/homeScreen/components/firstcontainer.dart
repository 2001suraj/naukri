import 'package:flutter/material.dart';
import 'package:naukri/helper/buildListTile.dart';
import 'package:naukri/view/screen/before_login_screen/login_screen/login_screen.dart';

import '../../../register_screen/register_screen.dart';
 Container buildFirstContainer(BuildContext context) {
    return Container(
        height: 340,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
                SizedBox(
              height: 25,
            ),
              Text(
                'Make the most of Naukri by creating your job profile',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              BuildListTile(
                icon: Icon(Icons.star, color: Colors.yellow),
                tap: () {},
                fsize: 13,
                f1size: 11,
                title: 'Get discovered directly by recuritures',
                subtitle: 'Recuruiters will not post  job 70% of the time',
              ),
              BuildListTile(
                icon: Icon(Icons.star, color: Colors.yellow),
                tap: () {},
                fsize: 13,
                f1size: 11,
                title: 'Find relevant job  recommendations',
                subtitle: 'Relevance is better for complete profiles',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 110,
                      height: 40,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));

                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.blue)),
                    ),
                    MaterialButton(
                      minWidth: 110,
                      height: 40,
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

                      },
                      child: Text('Register',
                          style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                      height: 110,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/user1.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }