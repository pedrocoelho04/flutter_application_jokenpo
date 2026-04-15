import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  String? op_player;
  String? op_sistema;
  List<String> opcoes = ["Pedra", "Papel", "Tesoura"];



  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AP 1 - Jokenpo"),
          backgroundColor: Color.fromARGB(255, 28, 0, 187),
        ),
        body: Row(
          children: [
            Center(child: Text("Escolha uma opção")),
            Column(
              children: [
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.hand.data)
                  ),
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.handFist.data)
                  ),
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.handScissors.data)
                  ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.hand.data)
                  ),
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.handFist.data)
                  ),
                ElevatedButton(
                  onPressed: null, 
                  child: Icon(FontAwesomeIcons.handScissors.data)
                  ),
              ],
            ),
            TextButton(onPressed: null, child: Container(),)
          ],
        ),
      ),
    );
  }
}