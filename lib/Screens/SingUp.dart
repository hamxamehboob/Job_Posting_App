import 'package:flutter/material.dart';
import 'package:job_posting_app/Screens/SignIn.dart';
import 'package:job_posting_app/widgets/AppButton.dart';
import 'package:job_posting_app/widgets/App_TextField.dart';

class SignUp extends StatelessWidget {
  var size,height,width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
                  "Let’s sign you up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: height/30,width: width/20,
            ),
            Container(
              child: Text(
                "Welcome\nJoin the community!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height/14,
            ),
            APPTextField(
              placeholder: 'Enter your full name',
            ),
            SizedBox(
              height: 20,
            ),
            APPTextField(placeholder: "Enter your email address"),
            SizedBox(
              height: 20,
            ),
            APPTextField(placeholder: "Enter your password"),
            SizedBox(
              height: 147,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Color(0xFF8F8F9E)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SignIn()));
                    })
                ],
              ),
            ),
            SizedBox(height: 26,),
            AppButton(label: 'Sign Up', Navigation: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignIn()));
            },),
          ],
        ),
      ),
    );
  }
}

