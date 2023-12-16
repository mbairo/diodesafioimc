import 'package:diodesafioimc/altura.dart';
import 'package:diodesafioimc/imc.dart';
import 'package:diodesafioimc/peso.dart';
import 'package:diodesafioimc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test("Calcula IMC com sucesso", () {
    final String nome = "Nome teste";
    final peso = Peso(65);
    final altura = Altura(1.6);
    final pessoa = Pessoa(nome, peso, altura);
    final imc = IMC(pessoa);
    expect(imc.calculaIMC(), closeTo(25, 0.4));
  });

  test("Classifica IMC com sucesso", () {
    final String nome = "Nome teste";
    final peso = Peso(65);
    final altura = Altura(1.6);
    final pessoa = Pessoa(nome, peso, altura);
    final imc = IMC(pessoa);
    expect(imc.classificaIMC(), equals("Sobrepeso"));
  });
}
