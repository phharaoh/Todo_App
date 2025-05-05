import 'package:flutter/material.dart';
import 'package:register_task/core/utilz/font.dart';

class Taskcontainer extends StatelessWidget {
  const Taskcontainer(
      {super.key,
      required this.color,
      required this.text,
      required this.image,
      required this.taskDescription});

  final Color color;
  final String text;
  final String taskDescription;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(end: 10),
              width: 60,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                  image: AssetImage('assets/image/pro.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffE4E4E4),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
             Expanded(
              child: Text(
                taskDescription,
                style: AppFont.containerTask,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(end: 10),
                    height: 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14), color: color),
                    child: Text(
                      text,
                      style: AppFont.smallContainerTask,
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  width: 22,
                  height: 22,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
