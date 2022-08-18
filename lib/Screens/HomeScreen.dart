import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_posting_app/Screens/Add_Job_Screen.dart';
import 'package:job_posting_app/widgets/JobListWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddJob()));
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Text(
                  "Hamza Mehboob",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 25),
                ),
                SizedBox(width: 130),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1E1C24),
                    border: Border.all(color: Color(0xFF5D5D67))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              hintText: "Search Keyword",
                              hintStyle: TextStyle(color: Color(0xFF8F8F9E)),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            JobListWidget(),
            JobListWidget(),
            JobListWidget(),
            JobListWidget(),
            JobListWidget(),
            JobListWidget(),
          ],
        ),
      ),
    );
  }
}
