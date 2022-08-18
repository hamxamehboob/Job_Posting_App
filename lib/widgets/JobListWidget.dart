import 'package:flutter/material.dart';

class JobListWidget extends StatefulWidget {


  @override
  State<JobListWidget> createState() => _JobListWidgetState();
}

class _JobListWidgetState extends State<JobListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Container(
        margin: EdgeInsets.only(bottom: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),color: Color(0xFF201E27),border: Border.all(color: Color(0xFF201E27))
        ),
        child:  Padding(
          padding: const EdgeInsets.only(left: 15,top: 20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter Developer Required",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w600)),
                      Text("Karachi, Pakistan",style: TextStyle(color:Color(0xFF8F8F9E),fontSize: 12,fontWeight: FontWeight.w400)),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Icon(Icons.edit,color: Colors.white,),
                  ),
                  SizedBox(width: 20,),
                  Icon(Icons.delete,color: Colors.red)
                ],
              ),

            ),
          ),
        ),

      ),
    );
  }
}
