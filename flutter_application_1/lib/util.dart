import 'package:flutter/material.dart';

class Util {
  criarTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style:
          TextStyle(fontSize: tamanho, color: cor, fontWeight: FontWeight.w500),
    );
  }

  criarBotao(conteudoTexto, tamanhoTexto, corTexto, corFundoBotao) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: corFundoBotao,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: () {
          print("OK");
        },
        child: criarTexto(conteudoTexto, tamanhoTexto, corTexto));
  }
}
