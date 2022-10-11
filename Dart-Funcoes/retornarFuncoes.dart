import 'FuncaoEmVariavel.dart';

void main(List<String> args) {
  print(somaParcial(2)(4));

  var sum = somaParcial(10);

  print(sum(10));
  print(sum(20));
  print(sum(30));
  print(sum(40));
}

int Function(int) somaParcial(int a) {
  return (int b) {
    return a + b;
  };
}
