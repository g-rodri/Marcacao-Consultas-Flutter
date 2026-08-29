void main() {
  List<String> statusConsultas = ['agendada', 'confirmada', 'cancelada'];

  List<double> precosConsultas = [150.0, 350.0, 280.0, 500.0];

  for (String status in statusConsultas) {
    print('Status da consulta: $status');
  }

  //Adiciona um novo valor à lista de preços
  precosConsultas.add(420.0);

  //Filtra e imprime apenas valores >= 300
  var precosFiltrados = precosConsultas.where((preco) => preco >= 300);

  print('\nValores maiores ou iguais a 300:');
  for (double preco in precosFiltrados) {
    print(preco.toStringAsFixed(2));
  }

  //Imprime a quantidade total de preços
  print('\nQuantidade total de preços na lista: ${precosConsultas.length}');
}
