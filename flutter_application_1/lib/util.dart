import 'package:flutter/material.dart';

class Util {
  criarTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style:
          TextStyle(fontSize: tamanho, color: cor, fontWeight: FontWeight.w500),
    );
  }

  criarBotao(conteudoTexto, tamanhoTexto, corTexto, acaoBotao, corFundoBotao) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        )),
        onPressed: acaoBotao,
        child: criarTexto(conteudoTexto, tamanhoTexto, corTexto));
  }
}
