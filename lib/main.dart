import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String? op_player;
  String? op_sistema;
  List<String> opcoes = ["Pedra", "Papel", "Tesoura"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "AP 1 - Jokenpo",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 28, 0, 187),
        ),
        body: Center(
          child: Padding(padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Escolha uma opção"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.hand.data),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.handFist.data),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.handScissors.data),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.hand.data),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.handFist.data),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(FontAwesomeIcons.handScissors.data),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: null, child: Container()),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
