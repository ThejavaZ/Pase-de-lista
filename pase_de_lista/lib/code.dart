import 'package:flutter/material.dart';

class CodePage extends StatefulWidget {
  const CodePage({super.key, required this.title});

  final String title;

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
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
          Expanded(child: Image.asset("images/qr.png")),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Icon(Icons.school)),
                Text("Aplicaciones Moviles Multiplataforma",
                    style: TextStyle(fontSize: 20))
              ]),
              Row(children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.school)),
                Text(
                  "Aplicaciones de IoT",
                  style: TextStyle(fontSize: 20),
                )
              ]),
            ],
          ))
        ],
      ),
    );
  }
}
