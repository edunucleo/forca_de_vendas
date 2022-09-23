class Endereco{
  final int cod_cli;
  final int cep;
  final String endereco;
  final String numero;
  final String bairro;
  final String cidade;
  final  Estado estado;

  Endereco(
      this.cod_cli,
      this.cep,
      this.endereco,
      this.numero,
      this.bairro,
      this.cidade,
      this.estado
      );
}

enum Estado {
  acre,
  alagoas,
  amapa,
  amazonas,
  bahia,
  ceara,
  distritoFederal,
  espiritoSanto,
  goias,
  maranhao,
  matoGrosso,
  matoGrossoDoSul,
  minasGerais,
  para,
  paraiba,
  parana,
  pernambuco,
  piaui,
  rioDeJaneiro,
  rioGrandeDoNorte,
  rioGrandeDoSul,
  rondonia,
  roraima,
  santaCatarina,
  saoPaulo,
  sergipe,
  tocantins,
}