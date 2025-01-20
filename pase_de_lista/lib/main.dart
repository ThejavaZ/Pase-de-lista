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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const ProfilePage(title: 'Porfile'),
    );
  }
}
