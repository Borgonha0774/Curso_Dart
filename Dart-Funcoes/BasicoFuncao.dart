import 'dart:math';

void main(List<String> args) {
  Sum();
  Multiply(10, 10);
  print(Division(100, 10));

  Calculate();
}

void Sum() {
  while (true) {
    double num = Random().nextDouble() * 100;
    print(num);
    if (num > 43 && num < 44) break;
  }
}

void Multiply(int n1, int n2) {
  print("O valor de $n1 * $n2 : ${n1 * n2}");
}

int Division(int n1, int n2) {
  return (n1 ~/ n2);
}

void Calculate() {
  // soma é igual a 11
  var soma = 4 + 7;
  print('o resultado de soma é ${soma}');

  // subtracao é igual a 7
  var subtracao = 11 - 4;
  print('o resultado de subtração é ${subtracao}');

  // inversao é igual a 5(positivo)
  var inversao = -(-5);
  print('o resultado de inversão é ${inversao}');

  // multiplicacao é igual a 15
  var multiplicacao = 5 * 3;
  print('o resultado de multiplicacao é ${multiplicacao}');

  // divisao é igual a 4
  double divisao = 16 / 4;
  print('o resultado de divisão é ${divisao}');

  // divisao_resultado_inteiro é igual a 2
  int divisao_resultado_inteiro = 5 ~/ 2;
  print('o resultado inteiro de divisão é ${divisao_resultado_inteiro}');

// modulo é igual a 1
  var modulo = 9 % 2;
  print('o resto de divisão(modulo) é ${modulo}');
}
