import 'dart:io';

import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart';
import 'package:desafio_calculadora_imc/models/console_utils.dart';

void main(List<String> arguments) {
  
  print("----- Bem-Vindo à Calculadora de IMC -----");
  print("");
  String termino = "----- Obrigado por testar a Calculadora de IMC -----";
  
  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");
  double? peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ", "S", "peso");
  if (peso == null){
    print(termino);
    exit(0);
  }
  double? altura = ConsoleUtils.lerDoubleComTexto("Digite seu altura: ", "S", "altura");
  if (altura == null){
    print(termino);
    exit(0);
  }

  double imc = calcularIMC(peso, altura);
  String classificacao = calcularClassificacao(imc);
  
  print("");
  print("Usuário:        $nome");
  print("IMC Calculado:  $imc");
  print("Classificação:  $classificacao");
  print(termino);
}