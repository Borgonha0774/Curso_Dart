import '../model/client.dart';
import '../model/produto.dart';
import '../model/venda.dart';
import '../model/vendaItem.dart';

void main(List<String> args) {
  var venda = Venda(
      client: new Client(nome: 'Francisco Cardoso', cpf: '123.456.789-00'),
      itens: <VendaItem>[
        new VendaItem(
            quantidade: 30,
            produto: new Produto(
                codigo: 1, nome: 'Lapis Preto', preco: 6.00, desconto: 0.5)),
        new VendaItem(
            quantidade: 20,
            produto: new Produto(
                codigo: 123, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
        new VendaItem(
            quantidade: 100,
            produto: new Produto(
                codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5))
      ]);
  for (var element in venda.itens) {
    print(element.preco);
  }
  print('O valor total da venda é: ${venda.valorTotal}');

  for (var produto in venda.itens) {
    print('Produto: ${produto.produto!.nome}');
    print('Preço: ${produto.produto!.preco}');
    print('Código: ${produto.produto!.codigo}');
  }
}
