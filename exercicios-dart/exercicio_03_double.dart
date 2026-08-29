void main() {
  double valorConsulta1 = 180.0;
  double valorConsulta2 = 350.5;
  double valorConsulta3 = 500.0;

  //Soma total.
  double somaTotal = valorConsulta1 + valorConsulta2 + valorConsulta3;
  print(somaTotal);

  //Média.

  double media = somaTotal / 3;
  print(media);

  //Valor com 10% de desconto para a consulta mais cara.

  double desconto = valorConsulta3 * 0.90;
  print('desconto $desconto');

  //Todos os valores formatados com 2 casas decimais.

  print(
    '${valorConsulta1.toStringAsFixed(2)} ${valorConsulta2.toStringAsFixed(2)} ${valorConsulta3.toStringAsFixed(2)}',
  );
}
