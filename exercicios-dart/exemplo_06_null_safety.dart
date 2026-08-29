void main() {
  String? telefone; // começa como null
  String? observacoes = null;

  print(telefone); // null
  print(observacoes); // null

  telefone = '(11) 98765-4321';
  observacoes = 'Consulta de rotina';

  // Operador ?? (valor padrão se for null)
  String telefoneExibicao = telefone ?? 'Telefone não informado';
  String obsExibicao = observacoes ?? 'Sem observações';

  print(telefoneExibicao);
  print(obsExibicao);

  // Verificação explícita
  if (telefone != null) {
    print('Telefone informado com ${telefone.length} caracteres');
  }
}
