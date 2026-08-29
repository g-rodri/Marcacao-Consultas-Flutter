void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = true;
  bool pacienteTemTelefone = true;
  bool pagamentoConfirmado = true;

  //Imprima cada variável.
  print(medicoAtivo);
  print(consultaAgendada);
  print(pacienteTemTelefone);
  print(pagamentoConfirmado);

  //Só permita confirmar a consulta se medicoAtivo && consultaAgendada.
  if (medicoAtivo == true && consultaAgendada == true) {
    bool consulta = true;
    print('1 $consulta');
  } else {
    bool consulta = false;
    print('2 $consulta');
  }

  //Se pacienteTemTelefone for false, imprima aviso de contato faltante.
  if (pacienteTemTelefone == false) {
    print('Alerta! o contanto do paciênte está ausente');
  }

  //Se pagamentoConfirmado for true, imprima "Liberado para atendimento".
  if (pagamentoConfirmado == true) {
    print('Liberado para atendimento');
  }
}
