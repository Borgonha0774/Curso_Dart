void main(List<String> args) {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];
  print("\nFunções Reduce");
  var notas = [7.1, 7.5, 4.9, 3.2, 2.9, 8.7, 9.8];
  double sumer(double a, double b) => a + b;
  print(notas.reduce(sumer));
  print(notas.reduce((acc, el) => acc + el));

  print("\nFunção map transforma uma lista e não altera a quantidade dela");
  String Function(Map) getName = (aluno) => aluno['nome'];
  var newName = alunos.map(getName);
  print(newName);

//faço a função dentro do map mas preciso fazer o casting para string
  var result =
      alunos.map((name) => name['nome'] as String).map((e) => e.length);
  print(result);
}
