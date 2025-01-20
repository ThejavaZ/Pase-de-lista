import 'package:flutter/material.dart';
import 'porfile.dart';

void main() {
  runApp(const PaseDeLista());
}

class PaseDeLista extends StatelessWidget {
  const PaseDeLista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pase de Lista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(title: 'Flutter Demo Home Page'),
    );
  }
}
