void main() {

int idPaciente = 67801;
int idMedico = 25609;
int idConsulta = 364;
int idadePaciente = 22;
int quantidadeConsultasMes = 4;

// Soma de idPaciente + idMedico.

int somaIds = idPaciente + idMedico;
print(somaIds);
//Próximo ID de consulta (idConsulta + 1).

int proximaConsulta = idConsulta + 1;
print(proximaConsulta);

//Se idadePaciente >= 60, imprima "Paciente prioritário", senão "Paciente comum".

if (idadePaciente >= 60) {
  print('Paciente Prioritário');
} else {
  print("Paciente comum");
}

//O dobro de quantidadeConsultasMes

int dobro = quantidadeConsultasMes * 2;
print("$dobro");

}