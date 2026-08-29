void main() {

  Set<String> especialidades = {'Cardiologia', 'Pediatria', 'Dermatologia'};

  // Tenta adicionar Cardiologia novamente.
  especialidades.add('Cardiologia');

  //Adiciona Ortopedia
  especialidades.add('Ortopedia');

  //Imprime o conjunto final
  print('Especialidades finais: $especialidades');

  //Verifica se Pediatria existe com contains e imprime
  bool temPediatria = especialidades.contains('Pediatria');
  print('Contém Pediatria? $temPediatria');

  //Imprime a quantidade de especialidades únicas
  print('Quantidade de especialidades únicas: ${especialidades.length}');
}
