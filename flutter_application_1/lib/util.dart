import 'package:flutter/material.dart';

class Util {
  appBar(funcao) {
    return AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: funcao,
          ),
        ]);
  }

  icone() {
    return const Icon(
      Icons.person,
      size: 200,
      color: Colors.green,
    );
  }

  criarTextField(tipoTeclado, textoEtiqueta, controlador, msg) {
    return TextFormField(
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
          labelText: textoEtiqueta,
          labelStyle: const TextStyle(
            color: Colors.green,
          )),
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.green, fontSize: 25.0),
      controller: controlador,
      validator: ((value) {
        if (value!.isEmpty) {
          return msg;
        }
        return null;
      }),
    );
  }

  criarTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style:
          TextStyle(fontSize: tamanho, color: cor, fontWeight: FontWeight.w500),
    );
  }

  criarBotao(
      validacao, conteudoTexto, tamanhoTexto, corTexto, funcao, corFundoBotao) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: corFundoBotao,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: funcao,
        child: criarTexto(conteudoTexto, tamanhoTexto, corTexto));
  }
}
