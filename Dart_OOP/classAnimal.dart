class Animal {
  String? cor;
  void dormir() {
    print('Dormir!!');
  }
}

class Passaro extends Animal {
  String? corBico;
  void voar() {
    print('Voar');
  }
}

class Cao extends Animal {
  String? corOrelha;
  void latir() {
    print('Latir');
  }
}

void main(List<String> args) {
  Cao cao = new Cao();
  cao.corOrelha = 'Preto';
  cao.cor = 'Marrom';
  print('A cor do cão é: ${cao.cor} e sua orelha: ${cao.corOrelha}');
  cao.latir();
  Passaro passaro = new Passaro();
  passaro.corBico = 'Amarelo';
  passaro.cor = 'Vermelho';
  print('A cor do pássaro é: ${cao.cor} e seu bico: ${cao.corOrelha}');
  passaro.voar();
}
