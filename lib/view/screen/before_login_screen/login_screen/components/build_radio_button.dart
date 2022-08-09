import 'package:flutter/material.dart';
import 'package:naukri/provider/login_option_provider.dart';
import 'package:provider/provider.dart';

 Container buildRadioButton(BuildContext context) {
     LoginOptionProvider loginOptionProvider =
        Provider.of<LoginOptionProvider>(context);
    return Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Radio(
                     autofocus: true,
                      activeColor: Colors.orange,
                      value: 'email address',
                      groupValue: loginOptionProvider.loginoption,
                      onChanged: loginOptionProvider.onchange),
                  Text('Email'),
                  SizedBox(width: 30),
                  Radio(
                      activeColor: Colors.orange,
                      value: 'username',
                      groupValue: loginOptionProvider.loginoption,
                      onChanged: loginOptionProvider.onchange),
                  Text('Username'),
                ],
              ),
            );
  }