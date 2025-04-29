import '../../core/utilz/color.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/dropDown.dart';
import '../../core/widgets/textFormFeild.dart';
import '../../core/widgets/elevatedButton.dart';

class EditTask extends StatelessWidget {
  const EditTask({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldColor,
        leading: InkWell(
          child: Image.asset('assets/image/ArrowIcon.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Edit Task",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
        ),
        actions: [
          Container(
            width: 80,
            height: 28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xffE4312B)),
            child: Image.asset('assets/image/deletButton.png'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage('assets/image/pro.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('In progress'),
                      Text(
                        'Believe you can, and you re halfway\nthere.',
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const DropDownFild(),
              const SizedBox(
                height: 15,
              ),
              const TxtFormfld(hintTxt: 'Title'),
              const SizedBox(
                height: 15,
              ),
              const TxtFormfld(hintTxt: 'Description'),
              const SizedBox(
                height: 15,
              ),
              ElvButton(onpress: () {}, textData: 'Make as Done'),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: 331,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                          color: AppColor.buttonColor,
                          width: 2), // Set border color and width
                      backgroundColor: Colors.white, // Button background color
                      foregroundColor: AppColor.buttonColor, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Optional: Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Update',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
