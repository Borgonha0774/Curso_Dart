import 'dart:math';

void main(List<String> args) {
  int result = SumFn(1, 3);
  print("O resultado é: $result");

  //add prototipo da variavel
  int Function(int, int) SumPrototipe = SumFn;
  print(SumPrototipe(1, 3));

  //Função Anonima
  int Function(int, int) SumAnonimous1 = (p0, p1) {
    return p0 + p1;
  };
  print(SumAnonimous1(1, 2));

  int Function(int, int) SumAnonimous2 = (p0, p1) => p0 + p1;
  print(SumAnonimous2(1, 2));

  int Function(int, int) MultiplayAnonimous = (p0, p1) => p0 * p1;

  print(MultiplayAnonimous(SumAnonimous1(1, 3), SumAnonimous2(1, 3)));

  ParametrosSemObrigacoes();
  ParametrosSemObrigacoes(100, 200);

  //funcoes são passadas como parametros
  print("\nfuncoes são passadas como parametros");
  var parFn = () => print("O valor é par!!");
  var imparFn = () => print("O valor é impar!!");

  executar(parFn, imparFn);
}

int SumFn(int a, int b) {
  return a + b;
}

//Parametros opcinais com valor default
void ParametrosSemObrigacoes([int a = 0, int b = 0]) {
  print("Parametros sem obrigações: ${a + b}");
}

void executar(Function fnPar, Function fnImpar) {
  Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}
