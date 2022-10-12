class Carro {
  final velocidadeMaxima;
  int _velocidadeAtual = 0; //aplicando o underLine a variavel fica privada

  //Com a variavel privada precisamos criar os metodos getter and setter
  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int vel) {
    //regra para controle da velocidade
    bool deltaVelocidade = (this._velocidadeAtual - vel).abs() <= 5;
    if (deltaVelocidade && vel >= 0) {
      print("setter");
      this._velocidadeAtual = vel;
    }
  }

  Carro({this.velocidadeMaxima = 15});

  int acelerar() {
    return this._velocidadeAtual < this.velocidadeMaxima
        ? this._velocidadeAtual += 5
        : this.velocidadeMaxima;
  }

  int frear() {
    return this._velocidadeAtual > 0 ? this._velocidadeAtual -= 5 : 0;
  }

  bool estadoNoLimite() {
    return this._velocidadeAtual == this.velocidadeMaxima ? true : false;
  }
}
