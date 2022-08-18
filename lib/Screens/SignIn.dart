import 'package:flutter/material.dart';
import 'package:job_posting_app/Screens/HomeScreen.dart';
import 'package:job_posting_app/Screens/SingUp.dart';
import 'package:job_posting_app/widgets/AppButton.dart';
import 'package:job_posting_app/widgets/App_TextField.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 110),
                child: const Text(
                  "Let’s sign you in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 14,
            ),
            Container(
              child: Text(
                "Welcome back\nyou’ve been missed !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 67,
            ),

            APPTextField(placeholder: "Enter your email address"),
            SizedBox(
              height: 20,
            ),
            APPTextField(placeholder: "Enter your password"),
            SizedBox(
              height: 238,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text(
                    "Don’t have an account ? ",
                    style: TextStyle(color: Color(0xFF8F8F9E)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SignUp()));
                      })
                ],
              ),
            ),
            SizedBox(height: 26,),
            AppButton(label: 'Sign In', Navigation: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));
            },),
          ],
        ),
      ),
    );
  }
}

