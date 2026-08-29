// Criação do Enum para gerenciar os status
enum StatusConsulta { agendada, confirmada, cancelada }

//Criação da Classe para representar a Consulta
class Consulta {
  int id;
  String medico;
  double valor;
  DateTime data;
  StatusConsulta status;
  bool ehRetorno;
  String? observacoes; // Campo opcional (null safety)

  //Construtor da classe
  Consulta({
    required this.id,
    required this.medico,
    required this.valor,
    required this.data,
    this.status = StatusConsulta.agendada,
    this.ehRetorno = false,
    this.observacoes,
  });
}

void main() {
  print('Iniciando Sistema de Gerenciamento de Consultas...\n');

  //Map com dados resumidos do paciente (incluindo o telefone como null)
  String? telefonePaciente;
  Map<String, dynamic> pacienteResumo = {
    'nome': 'Gabriel',
    'idade': 20,
    'convenio': 'SulAmérica',
  };

  //Set de especialidades únicas da clínica
  Set<String> especialidades = {
    'Cardiologia',
    'Dermatologia',
    'Neurologia',
    'Cardiologia',
  }; // O Set ignorará a duplicata

  // List contendo pelo menos 2 consultas utilizando a classe Consulta
  List<Consulta> listaConsultas = [
    Consulta(
      id: 1001,
      medico: 'Dr. Carlos (Cardiologia)',
      valor: 250.0,
      data: DateTime.now().add(Duration(days: 3)),
      ehRetorno: false,
      observacoes: 'Paciente relatou dores no peito.',
    ),
    Consulta(
      id: 1002,
      medico: 'Dra. Ana (Dermatologia)',
      valor: 180.50,
      data: DateTime.now().add(Duration(days: 10)),
      ehRetorno: true,
      //observacoes omitidas, ficará null
    ),
  ];

  //Atualizando status: Confirmando uma e Cancelando a outra
  print('--- Atualização de Agendamentos ---');
  listaConsultas[0].status = StatusConsulta.confirmada;
  print(
    'Consulta ${listaConsultas[0].id} com ${listaConsultas[0].medico} foi ${listaConsultas[0].status.name}.',
  );

  listaConsultas[1].status = StatusConsulta.cancelada;
  print(
    'Consulta ${listaConsultas[1].id} com ${listaConsultas[1].medico} foi ${listaConsultas[1].status.name}.',
  );
  print('-----------------------------------\n');

  //Calculando a soma dos valores usando 'num' (aceita int e double)
  num somaTotal = 0;
  for (var consulta in listaConsultas) {
    // Só somamos o valor se não estiver cancelada
    if (consulta.status != StatusConsulta.cancelada) {
      somaTotal += consulta.valor;
    }
  }

  //Record com um resumo rápido da primeira consulta válida
  var resumoRapido = (
    paciente: pacienteResumo['nome'],
    valor: listaConsultas[0].valor,
  );

  //RELATÓRIO FINAL
  print('========== RELATÓRIO FINAL ==========');
  print('Paciente: ${pacienteResumo['nome']}');
  print('Telefone: ${telefonePaciente ?? 'não informado'}');

  print('\n[ Resumo Financeiro ]');
  print('Quantidade de consultas registradas: ${listaConsultas.length}');
  print(
    'Soma dos valores (consultas ativas): R\$ ${somaTotal.toStringAsFixed(2)}',
  );

  print('\n[ Status de Cada Consulta ]');
  for (var consulta in listaConsultas) {
    String dataFormatada =
        '${consulta.data.day.toString().padLeft(2, '0')}/${consulta.data.month.toString().padLeft(2, '0')}/${consulta.data.year}';
    print(
      '- ID ${consulta.id} | $dataFormatada | Status: ${consulta.status.name.toUpperCase()}',
    );
  }

  print('\n[ Especialidades da Clínica ]');
  print(especialidades.join(', '));

  print('\n[ Record Resumo ]');
  print(
    'Paciente do Record: ${resumoRapido.paciente} - Valor Base: R\$ ${resumoRapido.valor.toStringAsFixed(2)}',
  );
  print('=====================================');
}
