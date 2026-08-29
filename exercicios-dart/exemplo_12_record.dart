void main() {
  (String, double) resumoConsulta = ('Carlos Andrade', 350.0);

  print('Paciente: ${resumoConsulta.$1}');
  print('Valor: ${resumoConsulta.$2}');

  // Record com nomes
  ({String medico, String paciente, double valor}) consulta = (
    medico: 'Dr. Roberto Silva',
    paciente: 'Carlos Andrade',
    valor: 350.0,
  );

  print(consulta.medico);
  print(consulta.paciente);
  print(consulta.valor);
}
