void main() {
  num identificador = 1; // int por baixo
  num valor = 350.75; // double por baixo

  print(identificador);
  print(valor);

  identificador = 2.5; // permitido, porque num aceita decimal
  print(identificador);
}
