import 'package:diodesafioimc/altura.dart';
import 'package:diodesafioimc/exceptions.dart';
import 'package:test/test.dart';

void main() {
  test("Cria altura com sucesso", () {
    final altura = Altura(1.7);
    expect(altura.getValor(), equals(1.7));
  });

  test("Cria altura com erro", () {
    expect(() => Altura(0), throwsA(TypeMatcher<AlturaInvalidaException>()));
  });
}
