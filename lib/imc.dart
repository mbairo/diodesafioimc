import 'dart:math';

import 'package:diodesafioimc/pessoa.dart';

class IMC {
  final Pessoa _pessoa;

  IMC(this._pessoa);

  Pessoa getPessoa() {
    return _pessoa;
  }

  double calculaIMC() {
    final int peso = _pessoa.getPeso().getValor();
    final double altura = _pessoa.getAltura().getValor();
    return (peso / pow(altura, 2));
  }

  String classificaIMC() {
    switch (calculaIMC()) {
      case < 16:
        return "Magreza";
      case >= 16 && < 17:
        return "Magreza moderada";
      case >= 17 && < 18.5:
        return "Magreza leve";
      case >= 18.5 && < 25:
        return "Saudável";
      case >= 25 && < 30:
        return "Sobrepeso";
      case >= 30 && < 35:
        return "Obesidade Grau I";
      case >= 35 && < 40:
        return "Obesidade Grau II (severa)";
      case >= 40:
        return "Obesidade Grau III (mórbida)";
      default:
        return "Sem classificação";
    }
  }
}
