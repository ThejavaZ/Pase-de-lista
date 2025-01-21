import 'package:flutter/material.dart';
import 'package:pase_de_lista/code.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Row(children: [
                ElevatedButton(
                  child: Text("Cambiar vista"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodePage()),
                    );
                  },
                )
              ]),
            ],
          ),
        )
      ],
    );
  }
}
