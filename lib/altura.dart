import 'package:diodesafioimc/exceptions.dart';

class Altura {
  final double _valor;

  Altura(this._valor) {
    if (_valor <= 0) {
      throw AlturaInvalidaException(_valor);
    }
  }

  double getValor() {
    return _valor;
  }
}
