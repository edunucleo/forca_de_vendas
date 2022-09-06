class Produto {
  final int categoria;
  final int codigo;
  final bool destaque;
  final String nome;
  final int codigo_de_barras;
  final String imagem;
  final double preco;

  const Produto(
      this.categoria,
      this.codigo,
      this.destaque,
      this.nome,
      this.codigo_de_barras,
      this.imagem,
      this.preco,);

  @override
  String toString() => '$nome (id=$codigo)';
}