void main(List<String> args) {
  calcularSalario(10.0, calcularBonus);

  //funções anonimas
  calcularSalario(200.23, () => print('Seu bonus é de: 200'));
}

void calcularSalario(double salario, Function fnParameter) {
  print('Seu salario é: $salario');
  fnParameter();
}

void calcularBonus() {
  print('Seu bonus é de: 20');
}
