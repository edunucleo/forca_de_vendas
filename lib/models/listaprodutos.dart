import 'produto.dart';
//classe usada para teste de listagem de produto

class ListaProdutos {

  static const _todosOsProdutos = <Produto>[
    Produto(0, 0, true, 'Café Pilão',123456,'cafe.jpg', 120.33),
    Produto(1, 0, true, 'Catchup Cepêra',123456,'catchup.jpg', 121.33),
    Produto(2, 1, true, 'Coca-Cola 1,5 L',123456,'coca.jpg', 122.33),
    Produto(3, 1, true, 'Maionese Hellmans',123456,'maionese.jpg', 123.33),
    Produto(4, 2, true, 'Milho Verde',123456,'milho.jpg', 124.33),
    Produto(5, 2, true, 'Salsicha Perdigão',123456,'salsicha.jpg', 125.33),
    Produto(6, 3, true, 'Tuiubaína Vieira',123456,'tubaina.jpg', 126.33),
    Produto(7, 3, true, 'Produto6',123456,'semImagem.jpg', 127.33),
    Produto(8, 3, true, 'Produto7',123456,'semImagem.jpg', 128.33),
    Produto(9, 3, true, 'Produto8',123456,'cafe.jpg', 129.33),
    Produto(10, 3, true, 'Produto9',123456,'semImagem.jpg', 130.33),
    Produto(11, 3, true, 'Produto10',123456,'semImagem.jpg', 131.33),
    Produto(12, 3, true, 'Produto11',123456,'cafe.jpg', 132.33),
    Produto(13, 3, true, 'Produto12',123456,'semImagem.jpg', 133.33),
    Produto(14, 3, true, 'Produto13',123456,'semImagem.jpg', 134.33),
    Produto(15, 3, true, 'Produto14',123456,'cafe.jpg', 135.33),
  ];

  static List<Produto> carregaProdutos() {
      return _todosOsProdutos.toList();
  }
}