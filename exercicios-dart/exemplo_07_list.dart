void main() {
  List<String> status = ['agendada', 'confirmada', 'cancelada'];
  List<double> valores = [150.0, 350.0, 500.0];
  List<int> ids = [1, 2, 3];

  print('Primeiro status: ${status[0]}');
  print('Quantidade de status: ${status.length}');

  valores.add(200.0);
  print('Valores após add: $valores');

  // Percorrendo a lista
  for (final item in status) {
    print('Status atual: $item');
  }

  // where (filtro) e map (transformação)
  List<double> caras = valores.where((v) => v >= 300).toList();
  List<String> textos = ids.map((id) => 'Consulta #$id').toList();

  print('Consultas caras: $caras');
  print('Textos: $textos');
}
