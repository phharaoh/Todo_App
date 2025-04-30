import '../utilz/font.dart';
import 'package:flutter/material.dart';

class Grouptasks extends StatelessWidget {
  const Grouptasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 335,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/Prof.png'),
                  const SizedBox(width: 13),
                  const Text("Personal Task", style: AppFont.containerText),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/image/5.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 335,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/home.png'),
                  const SizedBox(width: 10),
                  const Text("Home Task", style: AppFont.containerText),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/image/5.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 335,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/workimage.png'),
                  const SizedBox(width: 13),
                  const Text("Work Task", style: AppFont.containerText),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/image/5.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
