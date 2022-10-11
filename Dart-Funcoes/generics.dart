void main(List<String> args) {
  var listaInt = [3, 6, 7, 12, 45, 78, 1];
  var lista = [3, 6, "7", 12, "45", 78, 1];
  print(segundoElementoV1(lista));
  print(
      segundoElementoV2<int>(listaInt)); //forço o retorno refletir a lista int
  print(segundoElementoV2(lista)); //retorno reflete a lista object
}

//retornando um objeto e passando uma lista como argumento
//esta função é generica pode retornar qualquer tipo string, int etc... não usa generics
Object segundoElementoV1(List list) {
  return list.length >= 2 ? list[1] : null;
}

T? segundoElementoV2<T>(List<T> list) {
  return list.length >= 2 ? list[1] : null;
}
