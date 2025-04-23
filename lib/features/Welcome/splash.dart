import 'letStart.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Image.asset(
            'assets/image/splashimage.png',
            width: 334,
            height: 433,
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const Letstart(),
            ));
          },
        ),
      ),
    );
  }
}
