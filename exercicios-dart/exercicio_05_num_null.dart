void main() {
  num registro;

  registro = 1024;
  print('1 $registro');
  registro = 1024.75;
  print('2 $registro');

  String? telefone = null;

  String? observacoes = 'O paciente vai se atrasar.';

  print(telefone ?? 'não informado');

  if (observacoes != null) {
    print(observacoes.length);
  }
}
