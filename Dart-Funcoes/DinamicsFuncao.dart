void main(List<String> args) {
  print(juntarNumeros(7, 4));
  print(juntarPalavras("Tdo de ", "Bom !!!"));
}

dynamic juntarNumeros(dynamic a, b) {
  return a.toString() + b.toString();
}

dynamic juntarPalavras(dynamic a, b) {
  return a + b;
}
