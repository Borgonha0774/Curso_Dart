class Data {
  //Objetos de instancia
  int dia;
  int mes;
  int? ano; //passando o ? não precisa ser inicializado

  //Consturtor padrão
  //Data() {}

  //Consturtor obrigando pasagem dos parametros
  /* Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  } */

  //Simplificando o construtor os colchetes não obrigam a passagem de parametros no construtor
  Data([this.dia = 0, this.mes = 0, this.ano]);

  //Metodos
  String getData() {
    return ("${dia}/${mes}/${ano}");
  }

  //Metodo chamando outro metodo
  String toString() {
    return getData();
  }
}

void main(List<String> args) {
  //O new é opcional
  var dataAniversario = new Data(31, 8, 1949);
  /* dataAniversario.dia = 31;
  dataAniversario.mes = 8;
  dataAniversario.ano = 1949; */

  //o tipo pode ser o da classe
  Data dataCompra = Data(1, 1, 1970);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2008;

  /* print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}"); */
  print(dataAniversario.getData());
  print(dataCompra.getData());

//Metodo chamndo outro
  print(dataCompra.toString());
}
