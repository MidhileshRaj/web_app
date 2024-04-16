import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main part
          Container(
            height: 55,
            width: double.maxFinite,
            decoration:  BoxDecoration(color: Colors.blueGrey,gradient: LinearGradient(
              colors: [CustomColor.lightBg1,
                Colors.transparent,
                Colors.transparent,
                CustomColor.lightBg1
              ]
            ),borderRadius: BorderRadius.circular(100)),
            child: Row(
              children: [
                const Text(
                  "MR.",
                  style: TextStyle(
                      fontSize: 24,
                      color: CustomColor.secondaryYellow,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                for (int i = 0; i < 5; i++)
                  TextButton(onPressed: () {}, child:
                  const Text("About"))
              ],
            ),
          ),
          //Skills
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.blueGrey[400]),
          ),
          //Projects
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.blueGrey[200]),
          ),
          //Contact
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.blueGrey[800]),
          ),
          //Footer
        ],
      ),
    );
  }
}
