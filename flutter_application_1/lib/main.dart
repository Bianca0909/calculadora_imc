import 'package:flutter/material.dart';

import 'util.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paginaPrincipal(),
    );
  }

  calcular() {}

  paginaPrincipal() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          const Icon(
            Icons.person,
            size: 200,
            color: Colors.green,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Digite seu peso",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5, width: 100),
          const TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Digite sua altura",
          )),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Util().criarBotao("Calcular", 30, Colors.white, Colors.green),
            ],
          )
        ]),
      ),
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
