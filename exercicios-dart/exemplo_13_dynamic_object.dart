void main() {
  dynamic qualquer = 'Texto';
  print(qualquer);

  qualquer = 10; // permitido com dynamic
  print(qualquer);

  Object dado = 'Paciente';
  print(dado);

  // Object não permite qualquer operação sem verificação/cast
  if (dado is String) {
    print(dado.toUpperCase());
  }
}
