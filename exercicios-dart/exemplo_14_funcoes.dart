String formatarValor(double valor) {
  return 'R\$ ${valor.toStringAsFixed(2)}';
}

bool podeConfirmar(String status) {
  return status == 'agendada';
}

// Função com parâmetros nomeados
String descreverConsulta({
  required String paciente,
  required String medico,
  required double valor,
  String status = 'agendada',
}) {
  return 'Consulta de $paciente com $medico | $status | ${formatarValor(valor)}';
}

// Arrow function
int dobrar(int n) => n * 2;

void main() {
  print(formatarValor(350));
  print(podeConfirmar('agendada'));
  print(
    descreverConsulta(
      paciente: 'Carlos Andrade',
      medico: 'Dr. Roberto Silva',
      valor: 350.0,
    ),
  );
  print(dobrar(21));
}
