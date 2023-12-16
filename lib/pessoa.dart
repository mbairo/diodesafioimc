import 'package:diodesafioimc/altura.dart';
import 'package:diodesafioimc/peso.dart';

class Pessoa {
  final String _nome;
  final Peso _peso;
  final Altura _altura;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome() {
    return _nome;
  }

  Peso getPeso() {
    return _peso;
  }

  Altura getAltura() {
    return _altura;
  }
}
