void main() {
  Set<String> especialidades = {'Cardiologia', 'Dermatologia', 'Pediatria'};

  print(especialidades);

  especialidades.add('Cardiologia'); // não duplica
  especialidades.add('Ortopedia');

  print('Após inserções: $especialidades');
  print('Contém Pediatria? ${especialidades.contains('Pediatria')}');
}
