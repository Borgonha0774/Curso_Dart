void main(List<String> args) {
  metodoTradicionalFiltro();
}

//método procedural
void metodoTradicionalFiltro() {
  var notas = [8.2, 7.1, 6.6, 2.9, 10.7, 3.9, 12.8, 1.5];
  var notasBoas = [];

  for (var nota in notas) {
    if (nota >= 7) notasBoas.add(nota);
  }
  print(notasBoas);
}
