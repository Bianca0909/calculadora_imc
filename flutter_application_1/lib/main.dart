import 'package:flutter/material.dart';

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

  paginaPrincipal() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(children: const [
          Icon(
            Icons.person,
            size: 200,
            color: Colors.green,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
          )),
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
