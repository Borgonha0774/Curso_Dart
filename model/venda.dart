import 'client.dart';
import 'vendaItem.dart';

class Venda {
  Client? client;
  List<VendaItem> itens;

  Venda({this.client, this.itens = const []});

  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((acc, el) => acc + el);
  }
}
