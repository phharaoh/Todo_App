import '../utilz/font.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 10),
            color: const Color(0xffCEEBDC),
            shadowColor: Colors.black,
            elevation: .25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My First Task",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff6E6A7C)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Improve my English skills\nby trying to speek',
                        style: AppFont.cardTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 10),
            color: Colors.black,
            shadowColor: Colors.white,
            elevation: .25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Work Task",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add New Feature Add New\nFeature',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 10),
            color:  const Color(0xffFFE4F2),
            shadowColor: Colors.black,
            elevation: .25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home Task",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff6E6A7C)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add new feature for Do It\n app and commit it',
                        style: AppFont.cardTextStyle,
                      ),
                    ],
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
