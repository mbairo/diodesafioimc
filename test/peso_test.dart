import 'package:diodesafioimc/exceptions.dart';
import 'package:diodesafioimc/peso.dart';
import 'package:test/test.dart';

void main() {
  test("Cria peso com sucesso", () {
    final peso = Peso(55);
    expect(peso.getValor(), equals(55));
  });

  test("Cria peso com erro", () {
    expect(() => Peso(0), throwsA(TypeMatcher<PesoInvalidoException>()));
  });
}
