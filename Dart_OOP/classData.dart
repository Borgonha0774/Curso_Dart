class Data {
  //Objetos de instancia
  late int dia;
  late int mes;
  late int ano;

  //Metodos
  String getData() {
    return ("${dia}/${mes}/${ano}");
  }
}

void main(List<String> args) {
  //O new é opcional
  var dataAniversario = new Data();
  dataAniversario.dia = 31;
  dataAniversario.mes = 8;
  dataAniversario.ano = 1949;

  //o tipo pode ser o da classe
  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2008;

  /* print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}"); */
  print(dataAniversario.getData());
  print(dataCompra.getData());
}
