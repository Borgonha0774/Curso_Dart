void main(List<String> args) {
//arrow function o return está implicito quando esta em uma inica linha de codigo
  var adicao = (int a, int b) => a + b;
  print(adicao(12, 18));
  var subtracao = (int a, int b) => a - b;
  print(subtracao(100, 25));
  var multiplicacao = (int a, int b) => a * b;
  print(multiplicacao(100, 25));
  var divisao = (int a, int b) => a / b;
  print(divisao(100, 25));

  //arrow function o return está implicito quando esta em uma inica linha de codigo
  var adicaoset = (int a, int b) => {a + b};
  print(adicaoset(12, 18));
  var subtracaoset = (int a, int b) => {a - b};
  print(subtracaoset(100, 25));
  var multiplicacaoset = (int a, int b) => {a * b};
  print(multiplicacaoset(100, 25));
  var divisaoset = (int a, int b) => {a / b};
  print(divisaoset(100, 25));
}
