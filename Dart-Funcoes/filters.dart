void main(List<String> args) {
  var media = [1.2, 4.5, 3.8, 9.0, 8.5, 7.1];
  print("Metodo procedural: For");
  metodoTradicionalFiltro();
  print("\nMetodo Dart: Where");
  metodoWhereFiltro();
  print("\n Criando o metodo where => javascript filter");
  var notasRuins = (double nota) => nota <= 7;
  print(filterWhere(media, notasRuins));
  print(filterWhere(media, (p0) => p0 > 7));

  print("Como usamos generics podemos passar uma lista de strings");
  var name = ["Pedro", "João", "Maria", "Leo", "joaquim"];
  print(filterWhere(name, (p0) => p0.length > 5));
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

  print("Others formatt function Anonimous");
  var othersAplicationWhere = notas.where((nota) => nota >= 11);
  print(othersAplicationWhere);
}

List<T> filterWhere<T>(List<T> list, bool Function(T) fn) {
  List<T> listFilter = [];
  for (T element in list) {
    if (fn(element)) {
      listFilter.add(element);
    }
  }
  return listFilter;
}
