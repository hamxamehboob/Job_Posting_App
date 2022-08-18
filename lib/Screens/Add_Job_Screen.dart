import 'package:flutter/material.dart';
import 'package:job_posting_app/Screens/Edit_Job_Screen.dart';
import 'package:job_posting_app/Screens/HomeScreen.dart';
import 'package:job_posting_app/widgets/AppButton.dart';
import 'package:job_posting_app/widgets/App_TextField.dart';

class AddJob extends StatelessWidget {
   AddJob({Key? key}) : super(key: key);
   TextEditingController titleFieldController = TextEditingController();
   TextEditingController descriptionfieldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 95, left: 27),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Home()),);
                    },
                  ),
                  SizedBox(
                    width: 31,
                  ),
                  Text(
                    "Add New Job",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFF1E1C24),
                      borderRadius: BorderRadius.circular(15),border: Border.all(color: Color(0xFF5D5D67))),
                  child:  Padding(
                    padding: EdgeInsets.all(5),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: titleFieldController,
                        keyboardType: TextInputType.multiline,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
                        decoration: InputDecoration(
                          hintText: "Enter Postion Name",
                          hintStyle: TextStyle(
                              color: Color(0xFF8F8F9E),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 17),
              child: Container(
                height: 290,
                decoration: BoxDecoration(color: Color(0xFF1E1C24),
                    borderRadius: BorderRadius.circular(15),border: Border.all(color: Color(0xFF5D5D67))),
                child:  Padding(
                  padding: EdgeInsets.all(5),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      controller:descriptionfieldcontroller ,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
                      decoration: InputDecoration(
                        hintText: "Describe Requirement...",
                        hintStyle: TextStyle(
                            color: Color(0xFF8F8F9E),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 140,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppButton(
                  label: "Submit Job",
                  Navigation: () {
                    Navigator.pop(context,JobPost(titleFieldController.text, descriptionfieldcontroller.text));
                  }),
            ),

          ],
        ));
  }
}
class JobPost{
  final String title;
  final String description;

  JobPost(this.title, this.description);
}
