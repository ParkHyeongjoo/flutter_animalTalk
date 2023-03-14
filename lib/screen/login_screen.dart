import 'package:animal_talk/base/colors.dart';
import 'package:animal_talk/utils/app_layout.dart';
import 'package:animal_talk/utils/app_style.dart';
import 'package:flutter/material.dart';

import '../res/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ScreenBody();
  }
}

class _ScreenBody extends StatelessWidget {
  const _ScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Strings.loginMainText, style: AppStyle.text.headLineStyle1),
                Text(Strings.loginTitleText, style: AppStyle.text.headLineStyle2),
                SizedBox(height: AppLayout.getHeight(20)),
                _createInputField("Email", const Icon(Icons.email), TextInputType.emailAddress, false),
                SizedBox(height: AppLayout.getHeight(10)),
                _createInputField("Password", const Icon(Icons.key), TextInputType.visiblePassword, true),
                SizedBox(height: AppLayout.getHeight(20)),
                Text(Strings.findPassword,),
                SizedBox(height: AppLayout.getHeight(20)),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Sign In")
                ),
                SizedBox(height: AppLayout.getHeight(20)),
                Text("Or continue with"),
                SizedBox(height: AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("")),
                    ElevatedButton(onPressed: (){}, child: Text("")),
                    ElevatedButton(onPressed: (){}, child: Text("")),
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a Member? "),
                    Text("Register now"),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget _createInputField(String hint, Widget icon, TextInputType keyboardType, bool obscureText) {
    return SizedBox(
      width: AppLayout.getWidth(340),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppLayout.getHeight(12))),
            borderSide: BorderSide.none
          )
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
