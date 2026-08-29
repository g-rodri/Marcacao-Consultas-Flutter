// 1. Cria o enum fora da função main
enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  //Cria a data para a consulta (ex: data atual)
  DateTime dataConsulta = DateTime.now();

  // Inicializa o status atual
  StatusConsulta status = StatusConsulta.agendada;

  // Cria um Record nomeado
  var dadosConsulta = (
    paciente: 'Carlos Silva',
    medico: 'Dra. Ana Laura',
    valor: 250.0,
  );

  //Imprime dia/mês/ano
  String dia = dataConsulta.day.toString().padLeft(2, '0');
  String mes = dataConsulta.month.toString().padLeft(2, '0');
  String ano = dataConsulta.year.toString();
  print('Data da consulta: $dia/$mes/$ano');

  //Imprime o status atual (usamos .name para imprimir apenas a palavra, não "StatusConsulta.agendada")
  print('Status atual: ${status.name}');

  //Imprime os dados do record
  print('\n--- Dados do Record ---');
  print('Paciente: ${dadosConsulta.paciente}');
  print('Médico: ${dadosConsulta.medico}');
  print('Valor: R\$ ${dadosConsulta.valor.toStringAsFixed(2)}');

  //Muda o status para confirmada e imprime novamente
  status = StatusConsulta.confirmada;
  print('\nStatus atualizado para: ${status.name}');

  //Soma 7 dias à data e imprime a data de retorno
  DateTime dataRetorno = dataConsulta.add(Duration(days: 7));

  String diaRetorno = dataRetorno.day.toString().padLeft(2, '0');
  String mesRetorno = dataRetorno.month.toString().padLeft(2, '0');
  String anoRetorno = dataRetorno.year.toString();

  print('Data de retorno sugerida: $diaRetorno/$mesRetorno/$anoRetorno');
}
