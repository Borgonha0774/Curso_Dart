class Casa {
  String? cor;

  Casa({this.cor});

  //Netodos
  void abrirJanela([int? qtd]) {
    print('Vou abrir janela da casa $cor, Janelas: $qtd');
  }

  void abrirPorta([int? qtd]) {
    print('Vou abrir porta da casa $cor, Portas: $qtd');
  }

  void abrirCasa(int j, int p) {
    this.abrirJanela(j);
    this.abrirPorta(p);
  }
}

void main(List<String> args) {
  Casa minhaCasa = new Casa(cor: 'Amarela');
  print('A cor da minha casa é ${minhaCasa.cor}');

  minhaCasa.abrirJanela(5);
  minhaCasa.abrirPorta(2);

  Casa casa2 = new Casa(cor: 'Vermelha');
  /* casa2.abrirJanela(3);
  casa2.abrirPorta(4); */

  casa2.abrirCasa(2, 4);
}
