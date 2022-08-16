// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:naukri/provider/eye_icon_provider.dart';
import 'package:naukri/provider/login_option_provider.dart';

import 'package:naukri/service/auth_service.dart';
import 'package:naukri/utilities/show_snack_bar.dart';
import 'package:naukri/view/base_widgets/password_text_field.dart';
import 'package:naukri/view/base_widgets/text_field.dart';
import 'package:naukri/view/screen/after_login_screen/AHome_screen/ahome_screen.dart';

import 'package:naukri/view/screen/before_login_screen/login_screen/components/build_radio_button.dart';
import 'package:naukri/view/screen/before_login_screen/login_screen/components/google_whatsapp_button.dart';
import 'package:naukri/view/screen/register_screen/register_screen.dart';

import 'package:provider/provider.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool isloading = true;
  userLogin() async {
    setState(() {
      isloading = false;
    });
    String res = await AuthServices().loginUser(
        email: emailController.text, password: passwordController.text);
        
    if (res == " success") {
      showSnackBar('welcome',context ,color: Colors.green);

       Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AHomeScreen()));
    } else {
      showSnackBar('${res}',context ,color: Colors.red);

    }
    setState(() {
      isloading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    EyeIconProvider eyeIconProvider = Provider.of<EyeIconProvider>(context);
    LoginOptionProvider loginOptionProvider =
        Provider.of<LoginOptionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // login Text
              Text(
                " Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),

              //radio button   [ email and username]
              buildRadioButton(context),
              SizedBox(
                height: 10,
              ),

              //email  textfield

              buildTextField(
                controller: emailController,
                textInputType: TextInputType.name,
                hintText: 'Enter your ${loginOptionProvider.loginoption}',
              ),

              SizedBox(
                height: 20,
              ),

              //password  textfield
              buildPasswordTextField(
                controller: passwordController,
                hintText: 'Enter password',
                obscureText: eyeIconProvider.ischeck,
              ),
              SizedBox(
                height: 20,
              ),

              //forget password button
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: Text("Forget password"))),
              SizedBox(
                height: 5,
              ),

              //login button
              MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                onPressed: userLogin,
                child: isloading
                    ? Text('Login')
                    : Center(
                        child: CircularProgressIndicator(color: Colors.white)),
              ),
              SizedBox(
                height: 40,
              ),

              // divider or
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Text('  or  '),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //row with button of  google and whatsapp
              googleOrWhatsappButton(),

              SizedBox(
                height: 20,
              ),

              //text with [ all your activity will remain private]
              SizedBox(
                height: 20,
              ),

              //register for free
              Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text('Register for free'))),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
