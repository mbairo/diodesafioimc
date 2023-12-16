import 'dart:io';

void exibirMensagem(String mensagem) {
  print(mensagem);
}

String leiaNome() {
  exibirMensagem("Informe seu nome:");
  return stdin.readLineSync() ?? "Não informado";
}

double leiaAltura() {
  exibirMensagem("Informe sua altura em metros (ex.: 1.70):");
  return double.tryParse(stdin.readLineSync() ?? "0") ?? .0;
}

int leiaPeso() {
  exibirMensagem("Informe seu peso:");
  return int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
}
