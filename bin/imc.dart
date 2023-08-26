import 'dart:convert';
import 'dart:io';

import 'package:imc/exception/nome_invalido_exception.dart';
import 'package:imc/imc.dart' as imc;

void main(List<String> arguments) {
  print('Calculo de IMC 🧮');
  print('Informe o nome');
  var nome = stdin.readLineSync(encoding: utf8);
  if (nome?.trim() == '') {
    throw NomeInvalidoException();
  }

  var testeNome = num.tryParse(nome!);
  if (testeNome != null) {
    throw NomeNumeroException();
  }

  print('Informe o peso em kg (Ex.: 72.5)');
  double? peso = double.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
  if (peso == null) {
    print('Digite um valor. Ex: 68 ou 81.3');
    exit(0);
  }

  print('Informe a altura em metros');
  double? altura = double.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
  if (altura == null) {
    print('Digite um valor. Ex: 1.65 ou 1.8');
    exit(0);
  }

  double imcCalc() => peso / (altura * altura);

  imc.data(nome, peso, altura, imcCalc());
}
