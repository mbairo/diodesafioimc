class AlturaInvalidaException implements Exception {
  String _mensagem = "Altura inválida";

  AlturaInvalidaException(double altura) {
    _mensagem += ": $altura";
  }

  @override
  String toString() {
    return _mensagem;
  }
}

class PesoInvalidoException implements Exception {
  String _mensagem = "Peso inválido";

  PesoInvalidoException(int peso) {
    _mensagem += ": $peso";
  }

  @override
  String toString() {
    return _mensagem;
  }
}
