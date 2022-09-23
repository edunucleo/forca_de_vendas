import 'package:flutter/cupertino.dart';

class Endereco {
  final int cod_cli;
  final int cep;
  final String endereco;
  final String numero;
  final String? complemento;
  final String bairro;
  final String cidade;
  final Estado estado;

  Endereco(
      @required this.cod_cli,
      @required this.cep,
      @required this.endereco,
      @required this.numero,
      this.complemento,
      @required this.bairro,
      @required this.cidade,
      @required this.estado);
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
