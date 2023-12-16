import 'package:diodesafioimc/altura.dart';
import 'package:diodesafioimc/peso.dart';
import 'package:diodesafioimc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test("Cria pessoa com sucesso", () {
    final String nome = "Nome teste";
    final peso = Peso(65);
    final altura = Altura(1.6);
    final pessoa = Pessoa(nome, peso, altura);
    expect(pessoa.getNome(), nome);
    expect(pessoa.getPeso().getValor(), peso.getValor());
    expect(pessoa.getAltura().getValor(), altura.getValor());
  });
}
