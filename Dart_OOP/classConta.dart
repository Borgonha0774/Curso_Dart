class Conta {
  double saldo = 0;
  double _saque = 0;

  //Getter
  double get saque {
    //podemos fazer validações antes de retornar
    return this._saque;
  }

  //Setter
  void set saque(double saque) {
    if (saque > 0 && saque <= 500.00) this._saque = saque;
  }
}

void main(List<String> args) {
  Conta conta = new Conta();
  print(conta.saque); //getter
  conta.saque = 900; //não permite por causa das regras
  print(conta.saque);
  conta.saque = 499; //permite
  print(conta.saque);
}
