import 'package:diodesafioimc/exceptions.dart';

class Peso {
  final int _valor;

  Peso(this._valor) {
    if (_valor <= 0) {
      throw PesoInvalidoException(_valor);
    }
  }

  int getValor() {
    return _valor;
  }
}
