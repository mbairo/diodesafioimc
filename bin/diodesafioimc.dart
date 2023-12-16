import 'package:diodesafioimc/altura.dart';
import 'package:diodesafioimc/exceptions.dart';
import 'package:diodesafioimc/imc.dart';
import 'package:diodesafioimc/leitor.dart';
import 'package:diodesafioimc/peso.dart';
import 'package:diodesafioimc/pessoa.dart';

void main(List<String> arguments) {
  final nome = leiaNome();
  final pesoInput = leiaPeso();
  final alturaInput = leiaAltura();
  try {
    final peso = Peso(pesoInput);
    final altura = Altura(alturaInput);
    final pessoa = Pessoa(nome, peso, altura);
    final imc = IMC(pessoa);
    exibirMensagem("IMC: ${imc.calculaIMC()}");
    exibirMensagem(imc.classificaIMC());
  } catch (e) {
    if (e is PesoInvalidoException || e is AlturaInvalidaException) {
      exibirMensagem(e.toString());
    } else {
      exibirMensagem("Ocorreu um erro!");
    }
  }
}
