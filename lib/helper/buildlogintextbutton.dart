import 'package:flutter/material.dart';
import 'package:naukri/view/screen/before_login_screen/login_screen/login_screen.dart';
  Row buildLoginText(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ?'),
                  TextButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                    },
                    child: Text('Login'),
                  ),
                ],
              );
  }