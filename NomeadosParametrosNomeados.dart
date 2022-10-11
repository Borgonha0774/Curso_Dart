void main(List<String> args) {
  SaudarPessoasPosicionais("João", 70);
  SaudarPessoasPosicionais("Maria", 65);
  SaudarPessoasNomeados(name: "João", idade: 70);
  SaudarPessoasNomeados(idade: 65, name: "Maria");
  ImprimirDados(dados: "HDDs", dia: 21);
  ImprimirDados(dia: 15, dados: "LCDs");
  SaudarPessoasNomeados();
}

//Parametros posicionais não podem ser alteradas a ordem na chamada
void SaudarPessoasPosicionais(String name, int idade) {
  print("Olá $name nem parece que vc tem $idade");
}

//Parametros nomeados não precisa se preocupar com posição precisam ser inicialidos na passagem
void SaudarPessoasNomeados({String name = "Pedro", int idade = 10}) {
  print("Olá $name nem parece que vc tem $idade");
}

//Quando não inicializadas precisa ser adicionado required
void ImprimirDados({required String dados, required int dia}) {
  print("Compra os $dados no dia $dia");
}
