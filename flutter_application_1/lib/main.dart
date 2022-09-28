import 'package:flutter/material.dart';

import 'util.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

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

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  //Utilizar nas validações:
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String mensagem = "Informe os seus dados";

  calcular() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double imc = peso / (altura * altura);
      String imcText = imc.toStringAsPrecision(4);
      //toStringAsPrecision(4) = Mostrar 4 casas após a vírgula
      // mensagem = imcText;
      if (imc < 18.6) {
        mensagem = "Abaixo do peso ($imcText)";
      } else if (imc >= 18.6 && imc < 24.9) {
        mensagem = "Peso ideal ($imcText)";
      } else if (imc >= 24.9 && imc < 29.9) {
        mensagem = "Levemente acima do peso ($imcText)";
      } else if (imc >= 29.9 && imc < 24.9) {
        mensagem = "Obsidade Grau I ($imcText)";
      } else if (imc >= 34.9 && imc < 39.9) {
        mensagem = "Obsidade Grau II ($imcText)";
      } else if (imc >= 40) {
        mensagem = "Obsidade Grau III ($imcText)";
      }
    });
  }

  limparCampos() {
    pesoController.text = "";
    alturaController.text = "";

    setState(() {
      mensagem = "Informe seus dados";
      formController = GlobalKey<FormState>();
    });
  }

  paginaPrincipal() {
    return Scaffold(
      appBar: Util().appBar(limparCampos()),
      body: Column(children: [
        const SizedBox(height: 20),
        Util().icone(),
        Util().criarTextField(TextInputType.number, "Peso (kg)", pesoController,
            "Informe seu peso"),
        const SizedBox(height: 20),
        Util().criarTextField(TextInputType.number, "Altura", alturaController,
            "Informe sua altura"),
        const SizedBox(height: 20),
        Util().criarBotao(formController, "Calcular", 20, Colors.white,
            calcular(), Colors.green),
        const SizedBox(height: 20),
        Util().criarTexto(mensagem, 20, Colors.black)
      ]),
    );
  }
}
