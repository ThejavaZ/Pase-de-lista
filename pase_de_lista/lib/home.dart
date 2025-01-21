import 'package:flutter/material.dart';
import 'package:pase_de_lista/code.dart';
import 'package:pase_de_lista/porfile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ProfilePage(),
    CodePage(),
  ];

  void _pageChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Porfile",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "qrcode"),
          ],
          currentIndex: _selectedIndex,
          onTap: _pageChange,
        ));
  }
}
