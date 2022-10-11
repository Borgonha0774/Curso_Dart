void main(List<String> args) {
  print("Metodo procedural: For");
  metodoTradicionalFiltro();
  print("\nMetodo Dart: Where");
  metodoWhereFiltro();
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

//método where original do dart
void metodoWhereFiltro() {
  var notas = [8.2, 7.1, 6.6, 2.9, 10.7, 3.9, 12.8, 1.5];

  print("\nMetodos de uso WHERE");
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  var notasBoas = notas.where((nota) => notasBoasFn(nota));
  print(notasBoas);

  var notasTop = (double nota) => nota >= 8;
  var notasSuperTop = (double nota) => nota >= 10;
  var nt = notas.where(notasTop);
  print(nt);
  var nst = notas.where(notasSuperTop);
  print(nst);
}
