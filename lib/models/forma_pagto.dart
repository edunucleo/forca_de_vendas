class FormaPagto{
  final int cod_pla;
  final TipoPagamento tipoPagamento;

  FormaPagto(
    this.cod_pla,
    this.tipoPagamento,
  );

}

enum TipoPagamento{
  Dinheiro,
  Cheque,
  cartaoCredito,
  cartaoDebito,
  pix,
  semPagamento
}