import 'package:flutter/material.dart';
import '../../../core/widgets/cardImage.dart';

class SecHomeScreen extends StatelessWidget {
  const SecHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
