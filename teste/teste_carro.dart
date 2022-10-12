import '../model/carro.dart';

void main(List<String> args) {
  var fiatUno = new Carro();
  print(
      'Estado do veiculo inicial: ${fiatUno.velocidadeMaxima} -> ${fiatUno.velocidadeAtual}\n');

  print('Acelerar');
  while (!fiatUno.estadoNoLimite()) {
    fiatUno.acelerar();
    print(
        '${fiatUno.velocidadeMaxima} km/h -> ${fiatUno.velocidadeAtual} km/h');
  }
  print('Status da velocidade máxima: ${fiatUno.estadoNoLimite()}\n');

  print("Frear");
  while (fiatUno.velocidadeAtual > 0) {
    fiatUno.frear();
    print(
        '${fiatUno.velocidadeMaxima} km/h -> ${fiatUno.velocidadeAtual} km/h');
  }
  print('Status da velocidade máxima: ${fiatUno.estadoNoLimite()}\n');

  //A nova velocidade é gerenciada pelo setter da classe de acordo com a regra
  fiatUno.velocidadeAtual = 6;
  print(fiatUno.velocidadeAtual);
  fiatUno.velocidadeAtual = 5;
  print(fiatUno.velocidadeAtual);
}
