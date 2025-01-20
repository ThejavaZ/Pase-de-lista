import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Image.asset("images/yo.jpg")),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Javier Sarmiento", style: TextStyle(fontSize: 40))
                ]),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.numbers)),
                  Text(
                    "21311023",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.email)),
                  Text(
                    "a21311023@uthermosillo.edu.mx",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.phone)),
                  Text(
                    "6622037327",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.room)),
                  Text(
                    "DS5-1",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
              ],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Porfile"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "qrcode"),
        ]));
  }
}
