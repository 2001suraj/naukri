// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:naukri/provider/check_box_provider.dart';
import 'package:naukri/provider/eye_icon_provider.dart';
import 'package:naukri/service/auth_service.dart';
import 'package:naukri/utilities/show_snack_bar.dart';
import 'package:naukri/view/base_widgets/password_text_field.dart';
import 'package:naukri/view/base_widgets/text_field.dart';
import 'package:naukri/view/screen/after_login_screen/AHome_screen/ahome_screen.dart';
import 'package:provider/provider.dart';

class BuildBodyTextField extends StatefulWidget {
  const BuildBodyTextField(EyeIconProvider eyeIconProvider, {Key? key})
      : super(key: key);

  @override
  State<BuildBodyTextField> createState() => BuildBodyTextFieldState();
}

class BuildBodyTextFieldState extends State<BuildBodyTextField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    numberController.dispose();
  }

  bool isloading = true;

  // signup function

  signup() async {
    setState(() {
      isloading = false;
    });

    String res = await AuthServices().signUpUser(
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
      number: numberController.text,
    );
    print(res);
    if (res == "success") {
      showSnackBar(
        'welcome',
        context,
        color: Colors.green,
      );
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AHomeScreen()));
    } else {
      showSnackBar(
        '${res}',
        context,
        color: Colors.red,
      );
    }
    setState(() {
      isloading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    //  using provider

    EyeIconProvider eyeIconProvider = Provider.of<EyeIconProvider>(context);
    CheckBoxProvider checkboxprovider = Provider.of<CheckBoxProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          // name textField

          buildTextField(
            textInputType: TextInputType.name,
            controller: nameController,
            hintText: 'Full name',
          ),
          SizedBox(height: 20),

          // email textField
          buildTextField(
            textInputType: TextInputType.emailAddress,
            controller: emailController,
            hintText: 'Email address',
          ),
          SizedBox(height: 20),

          // password textField
          buildPasswordTextField(
            controller: passwordController,
            hintText: 'Create password',
            obscureText: eyeIconProvider.ischeck,
          ),
          SizedBox(height: 20),

          // mobile number textField
          buildTextField(
            textInputType: TextInputType.number,
            controller: numberController,
            hintText: 'Mobile number',
          ),
          SizedBox(height: 20),

          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              children: [
                Checkbox(
                    value: checkboxprovider.ischeck,
                    onChanged: checkboxprovider.onchange),
                Text('Send me important updates on '),
                SizedBox(width: 10),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/whatsapp.png'),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'WhatsApp',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

//term and condition  text
          RichText(
            text: TextSpan(style: TextStyle(fontSize: 10), children: <TextSpan>[
              TextSpan(
                  text: "By clicking register, you agree to Naukri.com's ",
                  style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: "Terms and conditions  ",
                  style: TextStyle(color: Colors.blue)),
              TextSpan(text: "and  ", style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: "Privacy policy  ",
                  style: TextStyle(color: Colors.blue)),
            ]),
          ),
          SizedBox(height: 20),

// register button
          MaterialButton(
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: signup,
            child: Container(
              width: double.infinity,
              height: 20,
              child: Center(
                child: isloading == true
                    ? Text(
                        'Register',
                      )
                    : Container(
                        child: Center(
                            child: CircularProgressIndicator(
                                color: Colors.white))),
              ),
            ),
          ),
          SizedBox(height: 20),

          // or  text
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
          SizedBox(height: 20),

// signup  with google button
          MaterialButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black54),
                borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/google.png'),
                      ),
                    ),
                  ),
                  Text(
                    '  Sign up with  Google',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
