import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';
import '../../../core/widgets/dropDown.dart';
import '../../../core/widgets/textFormFeild.dart';
import '../../../core/widgets/elevatedButton.dart';

class EditTask extends StatelessWidget {
  const EditTask({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldColor,
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
                    radius: 30,
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
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: AppColor.primaryColor, width: 2),
                      backgroundColor: Colors.white,
                      foregroundColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
