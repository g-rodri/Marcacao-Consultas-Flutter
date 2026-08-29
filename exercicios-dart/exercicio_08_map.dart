void main() {
  //Cria o Map<String, dynamic> com os dados iniciais
  Map<String, dynamic> consulta = {
    'id': 101,
    'paciente': 'Carlos Silva',
    'medico': 'Dra. Ana Laura',
    'valor': 250.50,
    'status': 'agendada',
    'telefone': null,
  };

  //Imprime paciente, médico e valor
  print('Paciente: ${consulta['paciente']}');
  print('Médico: ${consulta['medico']}');
  print('Valor: R\$ ${consulta['valor']}');

  //Atualiza o status para confirmada
  consulta['status'] = 'confirmada';

  //Atualiza o telefone para um número válido
  consulta['telefone'] = '11987654321';

  //Percorre o map com forEach imprimindo chave => valor
  print('\n--- Dados atualizados da consulta ---');
  consulta.forEach((chave, valor) {
    print('$chave => $valor');
  });
}
