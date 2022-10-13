void main(List<String> args) {
  calcularSalario(10.0, calcularBonus);
}

void calcularSalario(double salario, Function fnParameter) {
  print('Seu salario é: $salario');
  fnParameter();
}

void calcularBonus() {
  print('Seu bonus é de: 20');
}
