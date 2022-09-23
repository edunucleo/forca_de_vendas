import 'endereco.dart';
import 'produto.dart';

class Pedido{
   final int cod_ped;
   final int cod_cli;
   final String cod_vendedor;
   final List<Produto> itens;
   final Endereco endereco;


  const Pedido(
      this.cod_ped,
      this.cod_cli,
      this.cod_vendedor,
      this.itens,
      this.endereco
      );
}