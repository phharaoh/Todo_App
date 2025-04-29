import 'package:flutter/material.dart';
import '../../../core/widgets/appBar.dart';
import '../../../core/widgets/cardImage.dart';

class SecHomeScreen extends StatelessWidget {
  const SecHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarApp(),
            AppCard.card,
            AppCard.card,
            AppCard.card,
            AppCard.card,
          ],
        ),
      ),
    );
  }
}
