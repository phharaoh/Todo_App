import '../../Setting/setting.dart';
import '../../Setting/UpdatePro.dart';
import '../../Setting/changPass.dart';
import 'package:flutter/material.dart';
import '../../../core/utliz/font.dart';
import '../../../core/utliz/image.dart';



class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Profilescreen()));
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "assets/image/pro.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello!",
                            textAlign: TextAlign.start,
                          ),
                          Text("Ahmed Hegazy")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(AppImage.profileIcon),
                  const SizedBox(width: 13),
                  const Text("Update Profile", style: AppFont.textStyle),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const UpdateScreen()));
                          },
                          child: Image.asset('assets/image/ArrowForwar.png'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/Lock.png'),
                  const SizedBox(width: 10),
                  const Text("Change Password", style: AppFont.textStyle),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ChangPass()));
                          },
                          child: Image.asset('assets/image/ArrowForwar.png'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/Setting.png'),
                  const SizedBox(width: 13),
                  const Text("Settings", style: AppFont.textStyle),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Setting()));
                          },
                          child: Image.asset('assets/image/ArrowForwar.png'),
                        ),
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
