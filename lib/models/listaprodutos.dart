import 'produto.dart';
//classe usada para teste de listagem de produto

class ListaProdutos {

  static const _todosOsProdutos = <Produto>[
    Produto(0, 0, true, 'Produto0',123456,'foto.jpg', 120.33),
    Produto(1, 0, true, 'Produto1',123456,'foto.jpg', 121.33),
    Produto(2, 1, true, 'Produto2',123456,'foto.jpg', 122.33),
    Produto(3, 1, true, 'Produto3',123456,'foto.jpg', 123.33),
    Produto(4, 2, true, 'Produto4',123456,'foto.jpg', 124.33),
    Produto(5, 2, true, 'Produto5',123456,'foto.jpg', 125.33),
    Produto(6, 3, true, 'Produto6',123456,'foto.jpg', 126.33),

  ];

  static List<Produto> carregaProdutos() {
      return _todosOsProdutos.toList();
  }
}