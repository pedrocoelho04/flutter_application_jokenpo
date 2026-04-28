import 'dart:math';
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
  String? opPlayer;
  String? opSistema;
  String? resultado;
  List<String> opcoes = ["Pedra", "Papel", "Tesoura"];

  void jogar(String escolhaPlayer) {
    final random = Random();
    final escolhaSistema = opcoes[random.nextInt(3)];

    String res;
    if (escolhaPlayer == escolhaSistema) {
      res = "Empate!";
    } else if ((escolhaPlayer == "Pedra" && escolhaSistema == "Tesoura") ||
        (escolhaPlayer == "Papel" && escolhaSistema == "Pedra") ||
        (escolhaPlayer == "Tesoura" && escolhaSistema == "Papel")) {
      res = "Você ganhou!";
    } else {
      res = "Você perdeu!";
    }

    setState(() {
      opPlayer = escolhaPlayer;
      opSistema = escolhaSistema;
      resultado = res;
    });
  }

  IconData getIcone(String opcao) {
    switch (opcao) {
      case "Pedra":
        return FontAwesomeIcons.handFist as IconData;
      case "Papel":
        return FontAwesomeIcons.hand as IconData;
      case "Tesoura":
        return FontAwesomeIcons.handScissors as IconData;
      default:
        return FontAwesomeIcons.question as IconData;
    }
  }

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
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Escolha uma opção:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () => jogar("Pedra"),
                        child: Icon(getIcone("Pedra")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () => jogar("Papel"),
                        child: Icon(getIcone("Papel")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () => jogar("Tesoura"),
                        child: Icon(getIcone("Tesoura")),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                if (opPlayer != null &&
                    opSistema != null &&
                    resultado != null) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Você",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Icon(getIcone(opPlayer!), size: 40),
                          SizedBox(height: 4),
                          Text(opPlayer!),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          "VS",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Celular",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Icon(getIcone(opSistema!), size: 40),
                          SizedBox(height: 4),
                          Text(opSistema!),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    resultado!,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: resultado == "Você ganhou!" ? Colors.green
                           : resultado == "Você perdeu!" ? Colors.red
                           : Colors.orange,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
