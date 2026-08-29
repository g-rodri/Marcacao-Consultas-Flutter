void main() {
  String nomePaciente = 'Ronaldo';
  String nomeMedico = 'Jonas';
  String especialidade = 'Odontologia';
  String email = "rnald@gmail.com";

  // Imprima uma ficha completa com interpolação.
  String ficha =
      'Paciente: $nomePaciente | Email: $email | Medico: $nomeMedico | Especialidade: $especialidade';

  print(ficha);

  // Mostre o nome do paciente em maiúsculas.
  print(nomePaciente.toUpperCase());

  // Mostre a quantidade de caracteres do e-mail.
  print(email.length);

  // Verifique se o e-mail contém @ e imprima true ou false.
  print(email.contains('@'));
}
